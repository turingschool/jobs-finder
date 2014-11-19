# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'jobs/finder/version'

Gem::Specification.new do |spec|
  spec.name          = "jobs-finder"
  spec.version       = Jobs::Finder::VERSION
  spec.authors       = ["Jeff Casimir"]
  spec.email         = ["jeff@casimircreative.com"]
  spec.summary       = "Runner to fetch job listings from multiple sites."
  spec.description   = "Runner to fetch job listings from multiple sites."
  spec.homepage      = "http://github.com/turingschool/jobs-finder"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "rake"
  spec.add_dependency "sidekiq"
  spec.add_dependency "jobs-remotely"
end
