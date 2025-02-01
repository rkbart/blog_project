Rails.application.routes.draw do
  get "up" => "rails/health#show", as: :rails_health_check

  resources :posts
  get "/posts/new" => "posts#new"
  get "/posts/:id" => "posts#show"
  post "/posts" => "posts#create" ##pluralized if no id

   root "posts#index"
end
