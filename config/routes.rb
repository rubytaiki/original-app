Rails.application.routes.draw do
  devise_for :users
  root to: 'homes#index'
  resources :users,  only: :index
  resources :homes,  only: :index do
    collection do
      get 'tushima'
      get 'iki'
      get 'access'
    end
  end
  resources :foods,  only: [:new, :create, :edit, :update, :destroy, :index] do
    collection do
      get 'search'
    end
  end
  resources :hotels, only: [:new, :create, :edit, :update, :destroy, :index] do
    collection do
      get 'search'
    end
  end
end
