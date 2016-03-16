Rails.application.routes.draw do
  devise_for :users

  resources :users

  resources :badges

  resources :user_badges

  resources :courses 

  get "home", to: "home#show"

  root 'home#show'
end
