# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "the_role/version"

Gem::Specification.new do |s|
  s.name        = "the_role"
  s.version     = TheRole::VERSION
  s.authors     = ["Ilya N. Zykin"]
  s.email       = ["zykin-ilya@ya.ru"]
  s.homepage    = "https://github.com/the-teacher/the_role"
  s.summary     = %q{TheRole - simple, but powerful role system}
  s.description = %q{TheRole - simple, but powerful role system for ROR applications}

  s.rubyforge_project = "the_role"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  # specify any dependencies here; for example:
  # s.add_development_dependency "rspec"
  # s.add_runtime_dependency "rest-client"
  s.add_dependency "haml", "~> 3.0"
end
