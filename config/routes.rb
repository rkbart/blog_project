Rails.application.routes.draw do
  devise_for :users
  get "up" => "rails/health#show", as: :rails_health_check
  
  devise_scope :user do
    root to: 'devise/sessions#new'  # Devise login page
  end
  

  resources :posts do #this line replaces all the routes below
    resources :comments, only: [:create, :destroy]
  end
  
  # get "/posts/new" => "posts#new"
  # get "/posts/:id/edit" => "posts#edit"
  # get "/posts/:id" => "posts#show"
  # patch "/posts/:id" => "posts#update"
  # delete "/posts/:id" => "posts#destroy"
  # post "/posts" => "posts#create" 
  
  # root "posts#index"


end
