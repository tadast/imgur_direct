# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'imgur_direct/version'

Gem::Specification.new do |spec|
  spec.name          = "imgur_direct"
  spec.version       = ImgurDirect::VERSION
  spec.authors       = ["Tadas Tamosauskas"]
  spec.email         = ["tadas@pdfcv.com"]
  spec.description   = %q{Takes any imgur url and returns direct links to images within the link}
  spec.summary       = %q{Any imgur link to direct image urls}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec"
  spec.add_development_dependency "rspec-context-private"
end
