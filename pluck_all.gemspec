# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'pluck_all/version'

Gem::Specification.new do |spec|
  spec.name          = "pluck_all"
  spec.version       = PluckAll::VERSION
  spec.authors       = ["Stacey Touset"]
  spec.email         = ["stacey.touset@verbasoftware.com"]
  spec.description   = %q{Add pluck_all to ActiveRecord}
  spec.summary       = %q{Add pluck_all to ActiveRecord}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency "rails", "~> 3.0"

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
end
