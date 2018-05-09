# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'todoist/version'

Gem::Specification.new do |spec|
  spec.name          = "ruby-todoist-api-v7"
  spec.version       = Todoist::VERSION
  spec.authors       = ["Maarten van Vliet", "Stefan Siegl"]
  spec.email         = ["maartenvanvliet@gmail.com", "stesie@brokenpipe.de"]
  spec.summary       = %q{Wrapper for todoist api.}
  spec.description   = %q{Wrapper for todoist api v7.}
  spec.homepage      = "https://github.com/stesie/ruby-todoist-api"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.test_files    = spec.files.grep(%r{^(spec)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "rspec", "~> 3"
  spec.add_development_dependency "webmock", "~> 1.21"
end
