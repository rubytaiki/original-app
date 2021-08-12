Rails.application.routes.draw do
  devise_for :users
  root to: 'homes#index'
<<<<<<< Updated upstream
  resources :homes, only: :index
=======
  resources :foods,  only: [:new, :create, :edit, :update, :destroy]
  resources :hotels, only: [:new, :create, :edit, :update, :destroy]
  resources :users,  only: :index
  resources :homes,  only: :index do
    collection do
      get 'tushima'
      get 'iki'
      get 'eat'
      get 'stay'
    end
  end
>>>>>>> Stashed changes
end
