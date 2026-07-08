# frozen_string_literal: true

Gem::Specification.new do |s|
  s.name        = 'ovh-api'
  # version.rb opens `module Ovh::Api` whose parent isn't defined during gemspec
  # evaluation (RubyGems evals this file in its own lexical scope), so `require`-ing it
  # would raise NameError. Read the literal VERSION string instead.
  s.version     = File.read(File.expand_path('lib/ovh-api/version.rb', __dir__))[/VERSION\s*=\s*['"]([^'"]+)['"]/, 1]
  s.platform    = Gem::Platform::RUBY
  s.authors     = ['Nicolas Rodriguez']
  s.email       = ['nico@nicoladmin.fr']
  s.homepage    = 'https://github.com/jbox-web/ovh-api'
  s.summary     = 'Ruby transport gem for the entire OVH REST API'
  s.description = 'Generated Ruby HTTP client covering all OVH REST API resources built from OVH published schemas.'
  s.license     = 'MIT'

  s.required_ruby_version = '>= 3.0.0'

  s.files = Dir['LICENSE', 'README.md', 'lib/**/*.rb']

  s.add_dependency 'faraday'
  s.add_dependency 'faraday-multipart'
  s.add_dependency 'zeitwerk'
end
