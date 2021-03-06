# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'far/version'

Gem::Specification.new do |spec|
  spec.name          = "far"
  spec.version       = Far::VERSION
  spec.authors       = ["Mason Fischer"]
  spec.email         = ["mason@thoughtbot.com"]
  spec.description   = %q{A find and replace/refactor tool that uses regualar expressions}
  spec.summary       = %q{A find and replace/refactor tool that uses regualar expressions}
  spec.homepage      = "https://github.com/masonforest/far"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec"
  spec.add_development_dependency "pry"
end
