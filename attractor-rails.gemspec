$:.push File.expand_path("lib", __dir__)

# Maintain your gem's version:
require "attractor/rails/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |spec|
  spec.name = "attractor-rails"
  spec.version = Attractor::Rails::VERSION
  spec.authors = ["Julian Rubisch"]
  spec.email = ["julian@julianrubisch.at"]
  spec.license = "MIT"
  spec.summary = "Churn vs Complexity Chart Generator"
  spec.description = <<-DESCRIPTION
    Many authors (Michael Feathers, Sandi Metz) have shown that an evaluation of
    churn vs complexity of files in software projects provide a valuable metric
    towards code quality. This is another take on the matter, for ruby code, using the
    `churn` and `flog` projects.
  DESCRIPTION
  spec.homepage = "https://github.com/julianrubisch/attractor-rails"

  spec.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]

  spec.add_dependency "rails", "~> 6.0.3"
  spec.add_dependency "attractor", ">= 2.0.3"
  spec.add_dependency "attractor-ruby", "~> 0.1"
  spec.add_dependency "attractor-javascript", "~> 0.1"

  spec.add_development_dependency "sqlite3"
  spec.add_development_dependency "standard"
end
