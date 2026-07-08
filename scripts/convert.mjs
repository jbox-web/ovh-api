// Convert OVH's Swagger 1.2 resource declarations into a single OpenAPI 3.0 document.
//
// OVH ships a legacy Swagger 1.2 API (per-resource *API Declarations*, no `swaggerVersion`,
// no security definitions). openapi-generator only ingests OpenAPI 2.0/3.x, so this script
// bridges the gap in one deterministic pass:
//
//   raw 1.2 declarations (versions/raw/*.json)
//     -> union-merge colliding models      (OVH redefines shared types per product)
//     -> swagger-converter                 (1.2 -> 2.0, merges all resources)
//     -> 3 structural fixups               (dangling refs, multi-body params, missing path params)
//     -> swagger2openapi                   (2.0 -> 3.0)
//     -> versions/ovh.oas3.json
//
// The fixups exist because OVH's 1.2 has warts no standard converter handles: custom scalar
// types declared as undefined models (`password`, `ipBlock`, ...), array aliases (`Foo[]`),
// one `body` param per POST field (illegal in 2.0), and path templates whose `{id}` is not
// declared as a parameter. See the project README for the full rationale.

import fs from 'node:fs';
import crypto from 'node:crypto';
import { createRequire } from 'node:module';
import { fileURLToPath } from 'node:url';

const require = createRequire(import.meta.url);
const SwaggerConverter = require('swagger-converter');
const swagger2openapi = require('swagger2openapi');

const ROOT = fileURLToPath(new URL('..', import.meta.url));
const RAW = ROOT + 'versions/raw';
const OUT = ROOT + 'versions/ovh.oas3.json';

const paths = fs.readFileSync(ROOT + 'versions/resources.txt', 'utf8').trim().split('\n');
const slug = (p) => p.replace(/^\//, '').replace(/\//g, '_');
const hash = (o) => crypto.createHash('sha1').update(JSON.stringify(o)).digest('hex').slice(0, 8);

// --- 1) load pinned 1.2 declarations ---
const decls = {};
for (const p of paths) {
  const d = JSON.parse(fs.readFileSync(`${RAW}/${slug(p)}.json`, 'utf8'));
  d.swaggerVersion = '1.2';                       // OVH omits it; swagger-converter requires it
  d.basePath = d.basePath || 'https://api.ovh.com/1.0';
  decls[p] = d;
}

// --- 2) union-merge colliding models (before the merge, so last-wins becomes lossless) ---
// OVH defines shared types (service.*, order.*, nichandle.*, ...) slightly differently per
// resource. Merging naively keeps one variant at random. Instead we unify: enums take the
// union of their values, structs the union of their properties (all optional).
const byName = {};
for (const p of paths) {
  for (const [n, m] of Object.entries(decls[p].models || {})) (byName[n] ??= []).push(m);
}
const unified = {};
let unifiedEnums = 0, unifiedStructs = 0;
for (const [n, variants] of Object.entries(byName)) {
  if (new Set(variants.map(hash)).size <= 1) continue;   // identical across resources: nothing to do
  const base = JSON.parse(JSON.stringify(variants[0]));
  if (variants.some((v) => v.enum)) {
    const vals = new Set();
    variants.forEach((v) => (v.enum || []).forEach((x) => vals.add(x)));
    base.enum = [...vals].sort();
    unified[n] = base; unifiedEnums++;
  } else if (variants.some((v) => v.properties)) {
    const props = {};
    variants.forEach((v) => Object.entries(v.properties || {}).forEach(([k, pv]) => {
      if (!props[k]) props[k] = { ...pv, required: false };
    }));
    base.properties = props;
    unified[n] = base; unifiedStructs++;
  } else {
    unified[n] = base;                                   // generics etc.: pick one (flattened later)
  }
}
for (const p of paths) {
  for (const n of Object.keys(decls[p].models || {})) if (unified[n]) decls[p].models[n] = unified[n];
}

// --- 3) real resource listing + merge to Swagger 2.0 ---
const resourceListing = {
  swaggerVersion: '1.2',
  apiVersion: '1.0',
  basePath: 'https://api.ovh.com/1.0',
  info: { title: 'OVH API', description: 'All OVH REST resources, merged.' },
  apis: paths.map((p) => ({ path: p, description: p })),
};
const sw2 = SwaggerConverter.convert(resourceListing, decls);

// --- 4a) fixup: dangling $refs (OVH scalar types + array/map aliases + generics) ---
const S_STR = new Set(['password', 'text', 'uuid', 'ip', 'ipBlock', 'ipv4', 'ipv6', 'ipv4Block',
  'ipv6Block', 'macAddress', 'phoneNumber', 'internationalPhoneNumber', 'datetime', 'date', 'time',
  'duration', 'json', 'coordinates', 'string']);
const S_INT = new Set(['long', 'tinyint', 'unsignedLong', 'unsignedInt', 'int', 'integer']);
const S_NUM = new Set(['double', 'decimal', 'float']);
const classifyScalar = (name) => {
  const n = name.includes(':') ? name.split(':').pop() : name;   // `coreTypes.AccountId:string` -> string
  if (S_INT.has(n)) return { type: 'integer' };
  if (S_NUM.has(n)) return { type: 'number' };
  if (S_STR.has(n)) return { type: 'string' };
  return null;
};
const danglers = (doc) => {
  const defined = new Set(Object.keys(doc.definitions || {}));
  const refs = new Set([...JSON.stringify(doc).matchAll(/#\/definitions\/([^"]+)/g)].map((m) => m[1]));
  return [...refs].filter((r) => !defined.has(r));
};
const cat = { array: 0, scalar: 0, map: 0, generic: 0, other: [] };
for (const name of danglers(sw2)) {
  const defs = sw2.definitions;
  if (name.endsWith('[]')) {
    const base = name.slice(0, -2);
    const items = base in defs ? { $ref: `#/definitions/${base}` } : (classifyScalar(base) || { type: 'object' });
    defs[name] = { type: 'array', items }; cat.array++;
  } else if (classifyScalar(name)) {
    defs[name] = classifyScalar(name); cat.scalar++;
  } else if (name.startsWith('map[')) {
    defs[name] = { type: 'object', additionalProperties: { type: 'string' } }; cat.map++;
  } else if (name.includes('<')) {
    defs[name] = { type: 'object' }; cat.generic++;
  } else {
    defs[name] = { type: 'object' }; cat.other.push(name);   // fallback: free-form object (lossy)
  }
}
for (const name of danglers(sw2)) sw2.definitions[name] ??= { type: 'object' };  // resolve nested aliases

// --- 4b) fixup: merge multiple `body` params into one object (illegal to have >1 in 2.0) ---
let mergedOps = 0;
for (const item of Object.values(sw2.paths || {})) {
  for (const m of ['get', 'post', 'put', 'delete', 'patch']) {
    const op = item[m];
    if (!op || !Array.isArray(op.parameters)) continue;
    const bodies = op.parameters.filter((x) => x.in === 'body');
    if (bodies.length <= 1) continue;
    const props = {}, required = [];
    for (const b of bodies) { props[b.name] = b.schema || { type: 'string' }; if (b.required) required.push(b.name); }
    op.parameters = op.parameters.filter((x) => x.in !== 'body');
    op.parameters.push({
      in: 'body', name: 'body', required: required.length > 0,
      schema: { type: 'object', properties: props, ...(required.length ? { required } : {}) },
    });
    mergedOps++;
  }
}

// --- 4c) fixup: inject path params present in the template but undeclared ---
let injected = 0;
for (const [pth, item] of Object.entries(sw2.paths || {})) {
  const names = [...pth.matchAll(/\{([^}]+)\}/g)].map((m) => m[1]);
  for (const m of ['get', 'post', 'put', 'delete', 'patch']) {
    const op = item[m];
    if (!op) continue;
    op.parameters = op.parameters || [];
    for (const nm of names) {
      if (!op.parameters.some((x) => x.in === 'path' && x.name === nm)) {
        op.parameters.push({ name: nm, in: 'path', required: true, type: 'string' }); injected++;
      }
    }
  }
}

// --- 5) Swagger 2.0 -> OpenAPI 3.0 ---
swagger2openapi.convertObj(sw2, { patch: true, warnOnly: true }, (err, result) => {
  if (err) { console.error('swagger2openapi failed:', err.message); process.exit(1); }
  const oas3 = result.openapi;

  // --- 6) prune unreachable schemas ---
  // OVH's merged surface defines ~5300 schemas, but ~3600 are never referenced by any
  // operation (openapi-generator flags them as "unused model" and would still emit a file
  // for each). Keep only schemas reachable from the operations: seed with every $ref found
  // outside components.schemas (paths + the other component sections), then take the
  // transitive closure through the schemas themselves. Everything else is dead weight.
  const schemas = oas3.components?.schemas || {};
  const SCHEMA_REF = /#\/components\/schemas\/([^"]+)/g;
  const roots = new Set();
  const seedBlob = JSON.stringify({ paths: oas3.paths, ...oas3.components, schemas: undefined });
  for (const m of seedBlob.matchAll(SCHEMA_REF)) roots.add(m[1]);
  const keep = new Set();
  const stack = [...roots];
  while (stack.length) {
    const name = stack.pop();
    if (keep.has(name) || !(name in schemas)) continue;
    keep.add(name);
    for (const m of JSON.stringify(schemas[name]).matchAll(SCHEMA_REF)) {
      if (!keep.has(m[1])) stack.push(m[1]);
    }
  }
  let pruned = 0;
  for (const name of Object.keys(schemas)) if (!keep.has(name)) { delete schemas[name]; pruned++; }

  fs.writeFileSync(OUT, JSON.stringify(oas3, null, 1));
  console.log(JSON.stringify({
    resources: paths.length,
    paths: Object.keys(oas3.paths || {}).length,
    schemas: Object.keys(schemas).length,
    prunedSchemas: pruned,
    union: { enums: unifiedEnums, structs: unifiedStructs },
    fixups: { arrays: cat.array, scalars: cat.scalar, maps: cat.map, generics: cat.generic,
      unclassified: cat.other, mergedBodyOps: mergedOps, injectedPathParams: injected },
    out: 'versions/ovh.oas3.json',
  }, null, 1));
});
