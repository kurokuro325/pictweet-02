Rails.application.routes.draw do
  devise_for :users
  root to: 'tweets#index'
  resources :tweets
  resource :favorites, only: [:create, :destroy]
end
