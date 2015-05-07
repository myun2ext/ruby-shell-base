# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'shell_base/version'

Gem::Specification.new do |spec|
  spec.name          = "shell-base"
  spec.version       = ShellBase::VERSION
  spec.authors       = ["myun2"]
  spec.email         = ["myun2@nwhite.info"]
  spec.summary       = "Ruby Shell Base Library Gem."
  spec.description   = "Ruby Shell Base Library Gem."
  spec.homepage      = "https://github.com/myun2ext/ruby-shell-base"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "rake"
end
