Gem::Specification.new do |s|
  s.name        = "heroku-rack-ssl-enforcer-rails"
  s.version     = '0.1.0'
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["mallowlabs"]
  s.email       = ["mallowlabs@gmail.com"]
  s.homepage    = "https://github.com/mallowlabs/heroku-rack-ssl-enforcer-rails"
  s.summary     = "Enforce SSL on Rails application on Heroku"
  s.description = "This gem adds automatically rack-ssl-enforcer on Rails application on Heroku"
  s.license     = "MIT"

  s.required_rubygems_version = ">= 1.3.6"

  s.add_dependency "railties"
  s.add_dependency "rack-ssl-enforcer"

  s.files        = `git ls-files`.split("\n")
  s.executables  = `git ls-files -- bin/*`.split("\n").map { |f| File.basename(f) }
  s.require_path = 'lib'
end
