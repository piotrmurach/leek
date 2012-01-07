# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "leek/version"

Gem::Specification.new do |s|
  s.name        = "leek"
  s.version     = Leek::VERSION
  s.authors     = ["Piotr Murach"]
  s.email       = [""]
  s.homepage    = ""
  s.summary     = %q{Cucumber and RSpec extension that allows to test filesystem operations without leaving any trace on your system.}
  s.description = %q{Cucumber and RSpec extension that allows to test filesystem operations without leaving any trace on your system.}

  s.rubyforge_project = "leek"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  s.add_runtime_dependency 'cucumber', '>= 1.1.1'
  s.add_runtime_dependency 'fakefs', '>= 0.4.0'
  s.add_runtime_dependency 'rspec', '>= 1.1.1'
end
