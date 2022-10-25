Rails.application.routes.draw do
  get 'events/index'
  devise_for :users
  root to: 'tweets#index'
  resources :tweets do
    resources :comments, only: :create
    resource :favorites, only: [:create, :destroy]
  end
  resources :users, only: :show
  resources :events
end
