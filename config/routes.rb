Rails.application.routes.draw do

  devise_for :users
  root to: "runs#index"

  resources :users
  resources :routes, only: [ :index, :show, :new, :create ] do
    resources :runs, only: [ :new, :create ]
  end
  resources :runs, except: [ :new, :create ] do
    resources :run_sessions, only: [ :new, :create ]
  end
  resources :run_sessions, except: [ :new, :create ]
end
