# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'version'

Gem::Specification.new do |gem|
  gem.name          = 'Mongoid Flaggable'
  gem.version       = Mongoid::Flaggable::VERSION
  gem.authors       = ["Enrique Comba Riepenhausen"]
  gem.email         = ['ecomba@path11.com']
  gem.description   = %q{Flag content easily}
  gem.summary       = %q{Adds the capacity to flag (report) content}
  gem.homepage      = ""

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ['lib']
end
