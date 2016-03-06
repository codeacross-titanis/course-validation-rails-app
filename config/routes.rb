Rails.application.routes.draw do
  devise_for :users, controllers: { registrations: 'registrations' }

  resources :users

  get "home", to: "home#show"

  root 'home#show'
end
