Gem::Specification.new do |s|
  s.name        = 'rename2mac'
  s.version     = '0.9.6'
  s.date        = '2013-11-15'
  s.summary     = "rename2mac"
  s.description = "Rename folderful of filenames to Mac OS X supported format (UTF8-MAC). Mac OS X use only."
  s.authors     = ["Mac Ma"]
  s.email       = 'comomac@runbox.com'
  s.homepage    = 'http://rubygems.org/gems/rename2mac'
  s.license     = 'MIT'

  s.required_rubygems_version = '>= 2.0.3'

  s.add_dependency 'term-ansicolor',   '>= 1.2.2'

  s.executable = 'rename2mac'

  s.files = Dir.glob('*')
  s.files.reject! { |fn| fn.include?( '._' ) }
  s.files.reject! { |fn| fn.include?( '.DS_Store' ) }
  s.files.reject! { |fn| fn.include?( '.git' ) }
  s.files.reject! { |fn| fn.include?( '.sublime-' ) }
end