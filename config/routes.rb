Attractor::Rails::Engine.routes.draw do
  get "/", to: "reporter#index"
  get "/suggestions", to: "reporter#suggestions"
  get "/values", to: "reporter#values"
  get "/file_prefix", to: "reporter#file_prefix"

  get "/stylesheets/main.css", to: ->(env) { [200, {}, [File.open("#{Bundler.rubygems.find_name("attractor").first.full_gem_path}/app/assets/stylesheets/main.css").read]] }
  get "/javascripts/index.pack.js", to: ->(env) { [200, {}, [File.open("#{Bundler.rubygems.find_name("attractor").first.full_gem_path}/app/assets/javascripts/index.pack.js").read]] }
  get "/images/attractor_logo.svg", to: ->(env) { [200, {}, [File.open("#{Bundler.rubygems.find_name("attractor").first.full_gem_path}/app/assets/images/attractor_logo.svg").read]] }
end
