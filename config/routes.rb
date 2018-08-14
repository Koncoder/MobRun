Rails.application.routes.draw do

  devise_for :users
  root to: "runs#index"

  resources :users
  resources :routes, only: [ :index, :show, :new, :create ] do
    resources :runs, only: [ :new, :create ]
  end
  resources :runs, except: [ :new, :create ] do
    resources :sessions, only: [ :new, :create ]
  end
  resources :sessions, except: [ :new, :create ]
  root to: 'runs#index'
end
