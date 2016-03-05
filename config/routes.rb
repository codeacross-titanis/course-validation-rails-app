Rails.application.routes.draw do
  devise_for :users

  resources :users, only: [:show]

  get "home", to: "home#show"

  root 'home#show'
end
