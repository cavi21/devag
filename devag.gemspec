# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'devag/version'

Gem::Specification.new do |spec|
  spec.name          = "devag"
  spec.version       = Devag::VERSION
  spec.authors       = ["Agustin Cavilliotti"]
  spec.email         = ["cavi21@gmail.com"]
  spec.summary       = %q{A debugging or profiler little help}
  spec.description   = %q{A gem that try to simplify or at least help out debugging views and controllers of a Rails app looking for recursive calls to the DB and recursive calls to partials}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rails", "~> 3.2.18"
  spec.add_development_dependency "sqlite3"

end
