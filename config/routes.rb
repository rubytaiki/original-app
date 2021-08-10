Rails.application.routes.draw do
  devise_for :users
  root to: 'homes#index'
  resources :foods
  resources :users, only: :index
  resources :homes, only: :index do
    collection do
      get 'tushima'
      get 'iki'
    end
  end
end