# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'braille/version'

Gem::Specification.new do |spec|
  spec.name          = "braille"
  spec.version       = Braille::VERSION
  spec.authors       = ["Lucas Vieira"]
  spec.email         = ["lucas@vieira.io"]

  spec.summary       = %q{converts string to braille based on a given yaml dictionary.}
  spec.description   = %q{Implements Braille objects. Convert common strings to a compatible interchange braille format.}
  spec.homepage      = "https://github.com/pelgrim/braille"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = ""
  end

  spec.add_development_dependency "bundler", "~> 1.8"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec"
end
