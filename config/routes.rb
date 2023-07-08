Rails.application.routes.draw do
  get 'shop/index'
  root "home#index"
  resources :home
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  resources :news
  resources :club
  resources :team
  resources :fixture
  resources :membership
  resources :product
end
