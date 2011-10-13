# Assume a typical dev checkout to fetch the current merb-core version
require File.expand_path('../../merb-core/lib/merb-core/version', __FILE__)

# Load this library's version information
# require File.expand_path('../lib/merb-helpers/version', __FILE__)

require 'date'

Gem::Specification.new do |gem|
  gem.name        = 'merb-helpers'
  gem.version     = Merb::VERSION
  gem.date        = Date.today.to_s
  gem.authors     = ['Michael D. Ivey', 'David Demaree']
  gem.email       = 'ddemaree@adobe.com'
  gem.homepage    = 'http://typekit.com/'
  gem.description = 'Merb plugin containing view helpers'
  gem.summary     = 'Merb plugin that provides helpers for writing HTML templates'

  gem.has_rdoc = 'yard'
  gem.require_paths = ['lib']
  gem.files = Dir['Rakefile', '{lib,spec,docs}/**/*', 'README*', 'LICENSE*', 'TODO*'] & `git ls-files -z`.split("\0")

  # Runtime dependencies
  gem.add_dependency 'merb-core', "~> #{Merb::VERSION}"

  # Development dependencies
  gem.add_development_dependency 'rspec', '>= 2.5'
  gem.add_development_dependency 'hpricot'
end