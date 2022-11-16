Rails.application.routes.draw do
  get 'reviews/new'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  # get "restaurants", to: "restaurants#index"
  # get "restaurants/new", to: "restaurants#new"
  # get "restaurants/:id", to: "restaurants#show"
  # post "restaurants", to: "restaurants#create"

  resources :restaurants, only: [:index, :show, :new, :create, :destroy] do
    resources :reviews, only: [:new, :create]
  end
end
