$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "enrollment_style_guide/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "enrollment_style_guide"
  s.version     = EnrollmentStyleGuide::VERSION
  s.authors     = ["Excella"]
  s.email       = ["jon.lamarr@excella.com"]
  s.homepage    = "https://www.excella.com"
  s.summary     = "Style Guide for the USCIS Enrollments System"
  s.description = "EnrollmentStyleGuide is a dynamic style guide which can be plugged into any new app and will expose an API for the styled components from the Enrollments app."
  s.license     = "MIT"

   s.metadata['allowed_push_host'] = 'https://192.168.33.10:8808'

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 4.2.4"
  s.add_dependency "jquery-rails"
  s.add_development_dependency "sqlite3"
  s.add_dependency "sass"
  s.add_dependency "sass-rails"
end
