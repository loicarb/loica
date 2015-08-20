# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'loica/version'

Gem::Specification.new do |spec|
  spec.name          = "loica"
  spec.version       = Loica::VERSION
  spec.authors       = ["Seba Gamboa"]
  spec.email         = ["me@sagmor.com"]

  spec.summary       = %q{Loica framework}
  spec.description   = %q{Loica framework}
  spec.homepage      = "https://github.com/loicarb/loica"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency "loica-build"

  spec.add_development_dependency "bundler", "~> 1.10"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec"
end
