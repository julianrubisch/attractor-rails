Rails.application.routes.draw do
  mount Attractor::Rails::Engine => "/attractor-rails"
end
