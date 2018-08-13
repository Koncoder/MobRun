Rails.application.routes.draw do
  resources :users
  resources :routes, only: [ :index, :show, :new, :create ] do
    resources :runs, only: [ :new, :create ]
  end
  resources :runs, except: [ :new, :create ] do
    resources :sessions, only: [ :new, :create ]
  end
  resources :sessions, except: [ :new, :create ]
end
