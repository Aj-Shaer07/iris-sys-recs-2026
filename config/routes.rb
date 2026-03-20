Rails.application.routes.draw do
  resources :posts
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  mount Prometheus::Middleware::Exporter => '/metrics'
  # Defines the root path route ("/")
  root "posts#index"
end
