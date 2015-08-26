# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'evernote2md/version'

Gem::Specification.new do |spec|
  spec.name          = "evernote2md"
  spec.version       = Evernote2md::VERSION
  spec.authors       = ["leo"]
  spec.email         = ["facenord.sud@gmail.com"]

  spec.summary       = %q{Convert evernote XML to Mardown}
  spec.homepage      = "http://chezlesvoisins.ch"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.10"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec"
  spec.add_dependency 'nokogiri', '~> 1.6.6.2'
end
