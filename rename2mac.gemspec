# encoding: utf-8

require File.expand_path('../lib/rename2mac/version', __FILE__)


Gem::Specification.new do |s|
  s.name        = 'rename2mac'
  s.version     = Rename2mac::VERSION
  s.summary     = "Rename folderful of filenames to Mac OS X supported format (UTF8-MAC). Mac OS X use only."
  s.description = s.summary
  s.authors     = ["Mac Ma"]
  s.email       = 'comomac@runbox.com'
  s.homepage    = 'http://rubygems.org/gems/rename2mac'
  s.license     = 'MIT'

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=

  s.add_dependency 'term-ansicolor',   '>= 1.2.2'

  s.executable = 'rename2mac'

  s.require_paths = ["lib"]
  s.files = `git ls-files`.split($\)
  s.executables = s.files.grep(%r{^bin/}).map { |f| File.basename(f) }
end