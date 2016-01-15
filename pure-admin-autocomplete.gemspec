$:.push File.expand_path('../lib', __FILE__)

require 'pure_admin/rails/autocomplete/version'

Gem::Specification.new do |s|
  s.name        = 'pure-admin-rails-autocomplete'
  s.version     = PureAdmin::Rails::Autocomplete::VERSION
  s.authors     = ['Tobyn Dockerill']
  s.email       = ['tobyn@mindvision.com.au']
  s.homepage    = ''
  s.summary     = 'An autocomplete/typeahead input using Select2 and the Select2 Rails gem'
  s.license     = 'MIT'

  s.files = Dir['{app,config,db,lib}/**/*', 'MIT-LICENSE', 'Rakefile', 'README.md']

  s.add_dependency 'pure-admin-rails'
  s.add_dependency 'rails'
  s.add_dependency 'jquery-rails'
  s.add_dependency 'select2-rails'

  s.add_development_dependency 'sqlite3'
end
