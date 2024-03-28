Rails.application.routes.draw do
  mount Motor::Admin => '/motor_admin'
  get 'cart', to: 'cart#show'
  post 'cart/add'
  post 'cart/remove'
  root "home#index"
  resources :home
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  resources :news
  resources :club
  resources :team
  resources :opponent
  resources :membership
  resources :product
  resources :advert
end
