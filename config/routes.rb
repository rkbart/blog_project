Rails.application.routes.draw do
  get "up" => "rails/health#show", as: :rails_health_check

  resources :posts
  get "/posts/:id" => "posts#show"

   root "posts#index"
end
