# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "active_press/version"

Gem::Specification.new do |s|
  s.name        = "active_press"
  s.version     = ActivePress::VERSION
  s.authors     = ["Robert Williams"]
  s.email       = ["rob@r-williams.com"]
  s.homepage    = ""
  s.summary     = %q{TODO: Write a gem summary}
  s.description = %q{TODO: Write a gem description}

  s.rubyforge_project = "active_press"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  s.add_dependency('activesupport', '>= 3.0.0')
  s.add_dependency('activerecord', '>= 3.0.0')
  
  s.add_development_dependency('rspec', '>= 2.0.0')
  s.add_development_dependency('rake', '= 0.8.7')
end
