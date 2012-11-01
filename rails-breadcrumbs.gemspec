# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "rails-breadcrumbs/version"

Gem::Specification.new do |s|
  s.name        = "rails-breadcrumbs"
  s.version     = RailsBreadcrumbs::VERSION
  s.authors     = ["Francesc Esplugas", "Peter Ragone"]
  s.email       = ["erwin.matthijssen@gmail.com", "pcagone@gmail.com"]
  s.homepage    = 'https://github.com/fesplugas/rails-breadcrumbs'
  s.summary     = 'Breadcrumbs for Rails Applications'

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  s.add_dependency('rails','>= 3.1')
  s.add_dependency("bootstrap-sass", "~> 2.0.4.1")

  s.add_development_dependency('rspec')
  s.add_development_dependency('database_cleaner')
  s.add_development_dependency('sqlite3')
end
