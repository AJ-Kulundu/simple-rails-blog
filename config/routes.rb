Rails.application.routes.draw do
  # Defines the root path route ("/")
  root "blog_posts#index"

  resources :blog_posts
end
