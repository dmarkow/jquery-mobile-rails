$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "jquery_mobile_rails/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "jquery_mobile_rails"
  s.version     = JqueryMobileRails::VERSION
  s.authors     = ["Tiago Scolari"]
  s.email       = ["tscolari@gmail.com"]
  s.homepage    = "https://github.com/tscolari/jquery-mobile-rails"
  s.summary     = "JQuery Mobile files for Rails 3.1."
  s.description = "JQuery Mobile files for Rails 3.1 assets pipeline"

  s.files = Dir["{app,config,db,lib,vendor}/**/*"] + ["MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 3.1.0"

  s.add_development_dependency "sqlite3"
  s.require_path = 'lib'
end
