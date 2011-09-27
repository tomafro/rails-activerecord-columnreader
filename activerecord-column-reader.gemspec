# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)

Gem::Specification.new do |s|
  s.name              = "activerecord-column-reader"
  s.version           = "1.0.0"
  s.summary           = "Simple ActiveRecord optimization"
  s.author            = "Tom Ward"
  s.email             = "tom@popdog.net"
  s.homepage          = "http://tomafro.net"

  s.has_rdoc          = true
  s.extra_rdoc_files  = %w(README)
  s.rdoc_options      = %w(--main README)

  # Add any extra files to include in the gem
  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  # Main dependencies
  s.add_dependency 'activerecord', '~>3.0'

  # Development only dependencies
  s.add_development_dependency 'rspec', '~>2.1.0'
  s.add_development_dependency 'rake', '~>0.8.7'
  s.add_development_dependency 'sqlite3', '~>1.3.4'
  s.add_development_dependency 'sqlite3-ruby', '~>1.3.3'
  s.add_development_dependency 'sdoc', '~>0.2.20'
end