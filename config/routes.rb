Rails.application.routes.draw do
  devise_for :users

  root 'users#index'

  resources :users, only: [:index]
  resources :favorites
  resources :maps, only: [:index]
  resources :lists do
    resources :comments, only: [:new, :create, :update, :edit, :destroy]
  end
end
