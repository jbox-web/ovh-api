# ovh-api

[![CI](https://github.com/jbox-web/ovh-api/actions/workflows/ci.yml/badge.svg)](https://github.com/jbox-web/ovh-api/actions/workflows/ci.yml)
[![regenerate](https://github.com/jbox-web/ovh-api/actions/workflows/regenerate.yml/badge.svg)](https://github.com/jbox-web/ovh-api/actions/workflows/regenerate.yml)
[![docs](https://github.com/jbox-web/ovh-api/actions/workflows/docs.yml/badge.svg)](https://jbox-web.github.io/ovh-api/)
[![License: MIT](https://img.shields.io/badge/License-MIT-blue.svg)](LICENSE)

A generated Ruby transport gem for the **entire** OVH REST API (all 70 top-level
resources), produced from OVH's published schemas.

`ovh-api` is the thin, machine-generated HTTP layer. Business ergonomics and quirk
absorption belong in a hand-written wrapper on top (`ovh-client`, à la `dolibarr-client`
over `dolibarr-api`). OVH's request-signing auth is **not** baked in here — it is injected
as a middleware through the generator's auth seam (see *Authentication* below).

## How it is built

OVH does not publish OpenAPI. Its API is described in **legacy Swagger 1.2**
(per-resource *API Declarations*, no `swaggerVersion`, no security definitions), which
openapi-generator cannot ingest. The pipeline bridges that gap:

```
versions/raw/*.json         pinned OVH 1.2 declarations (70 resources)
  └─ scripts/convert.mjs
       ├─ union-merge colliding models   OVH redefines shared types (service.*, order.*, …)
       │                                 per product; enums → union of values, structs →
       │                                 union of properties (all optional)
       ├─ swagger-converter              1.2 → 2.0, merges all 70 resources into one doc
       ├─ 3 structural fixups
       │    • dangling $refs             OVH scalar types (password, ipBlock, …) declared
       │                                 as undefined models; array aliases (Foo[]); maps
       │    • multi-body params          1.2 emits one `body` param per POST field; 2.0
       │                                 allows only one → merged into a single object
       │    • missing path params        `{id}` in the template but undeclared (e.g.
       │                                 /telephony …/{queueId}/agent)
       └─ swagger2openapi                2.0 → 3.0
  └─ versions/ovh.oas3.json   → fed to openapi-generator (-g ruby-idiomatic)
```

The last full run: **70 resources → 4728 paths, 5268 schemas**, OpenAPI 3.0.0,
`openapi-generator validate` clean (0 errors; only harmless "unused model" warnings).

Two models remain mapped to a free-form object (lossy but harmless): `T` (a generic
placeholder) and `coreTypes.AccountId:string`.

## Commands (mise)

```bash
mise run fetch      # refresh versions/raw/*.json from api.ovh.com (overwrites pinned schemas)
mise run convert    # versions/raw → versions/ovh.oas3.json
mise run generate   # generate the gem into lib/** (-g ruby-idiomatic)
mise run build      # convert + generate + format
mise run dev:spec   # run the generated spec suite
```

`versions/raw/*.json` are committed so the build is reproducible **without** hitting OVH.
Run `mise run fetch` only to deliberately refresh the pinned schemas.

### Generator dependency

`ruby-idiomatic` is not in any published openapi-generator release — it lives in a local
fork. `mise run generate` targets the fork's built CLI jar (`OVH_FORK` var in `mise.toml`).
The jar is authoritative: rebuild it after any template or Java change to the generator so
the embedded templates (including the auth-signing seam) are current:

```bash
cd "$OVH_FORK" && ./mvnw -pl modules/openapi-generator-cli -am package -DskipTests
```

## Authentication (request signing)

OVH signs each request: headers `X-Ovh-Application`, `X-Ovh-Consumer`, `X-Ovh-Timestamp`,
and `X-Ovh-Signature` = `$1$` + SHA1(`app_secret + consumer_key + METHOD + full_url + body
+ timestamp`). This is a per-request signature, **not** an OpenAPI security scheme, so it is
injected through the `ruby-idiomatic` middleware seam rather than generated:

```ruby
require "digest/sha1"

class OvhSignature < Faraday::Middleware
  def initialize(app, app_key:, app_secret:, consumer_key:)
    super(app)
    @app_key, @app_secret, @consumer_key = app_key, app_secret, consumer_key
  end

  def on_request(env)
    ts  = Time.now.to_i.to_s
    sig = "$1$" + Digest::SHA1.hexdigest(
      [@app_secret, @consumer_key, env.method.to_s.upcase, env.url.to_s, env.body.to_s, ts].join("+"))
    env.request_headers.merge!(
      "X-Ovh-Application" => @app_key, "X-Ovh-Consumer" => @consumer_key,
      "X-Ovh-Timestamp"   => ts,       "X-Ovh-Signature" => sig)
  end
end

client = Ovh::Api::Client.new do |config|
  config.use(OvhSignature, app_key: ENV["OVH_APP_KEY"], app_secret: ENV["OVH_APP_SECRET"],
             consumer_key: ENV["OVH_CONSUMER_KEY"])
end
```

## Layout

```
versions/raw/       pinned OVH 1.2 schemas (source of truth, committed)
versions/resources.txt   the 70 top-level resource paths
scripts/convert.mjs conversion pipeline (1.2 → OpenAPI 3.0)
mise.toml           fetch / convert / generate / build tasks
lib/                generated gem — DO NOT edit by hand
```
