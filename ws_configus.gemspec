# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'ws_configus/version'

Gem::Specification.new do |spec|
  spec.name          = "ws_configus"
  spec.version       = WsConfigus::VERSION
  spec.authors       = ["Emperor", "Vlad Shturma"]
  spec.email         = ["valentine.emperor@gmail.com"]
  spec.description   = "Workshop configus realization"
  spec.summary       = "Workshop configus realization"
  spec.homepage      = "https://github.com/vemperor/ws_configus"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
end
