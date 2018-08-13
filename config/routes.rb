Rails.application.routes.draw do

  devise_for :users
  root to: "runs#index"

  resources :users
  resources :sessions
  resources :runs
  resources :routes
end
