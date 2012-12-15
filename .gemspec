# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'version'

Gem::Specification.new do |gem|
  gem.name          = 'mongoid-flaggable'
  gem.version       = Mongoid::Flaggable::VERSION
  gem.authors       = ['Enrique Comba Riepenhausen']
  gem.email         = ['ecomba@path11.com']
  gem.description   = %q{Flag content easily}
  gem.summary       = %q{Have you ever had content in an application that
                        your users wanted to flag? Now you can.}
  gem.homepage      = "https://github.com/path11/mongoid-flaggable"

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ['lib']
end
