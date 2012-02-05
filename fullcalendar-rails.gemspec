# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "fullcalendar-rails/version"

Gem::Specification.new do |s|
  s.name        = "fullcalendar-rails"
  s.version     = "1.5.2"
  s.authors     = ["Edward"]
  s.email       = ["b**@gmail.com"]
  s.homepage    = "https//github.com/mankind/fullcalendar-rails"
  s.summary     = "Use Fullcalendar Jquery with rails 3.2"
  s.description = "Quickly integrate Fullcalendar into the asset pipeline and rails 3.2"

  s.files       = Dir["lib/**/*"] + Dir["vendor/**/*"] + ["Rakefile", "README.md"]
  s.require_paths = ["lib"]
  
  s.add_dependency('railties', '>= 3.1.0')
end
