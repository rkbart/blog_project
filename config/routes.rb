Rails.application.routes.draw do
  get "up" => "rails/health#show", as: :rails_health_check

  resources :posts #this line replaces all the routes below
  
  # get "/posts/new" => "posts#new"
  # get "/posts/:id/edit" => "posts#edit"
  # get "/posts/:id" => "posts#show"
  # patch "/posts/:id" => "posts#update"
  # delete "/posts/:id" => "posts#destroy"
  # post "/posts" => "posts#create" 
  
  root "posts#index"
end
