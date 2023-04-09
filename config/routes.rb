Rails.application.routes.draw do
  devise_for :users
  # Defines the root path route ("/")
  root "blog_posts#index"

  resources :blog_posts
end
