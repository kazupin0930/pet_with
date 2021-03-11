Rails.application.routes.draw do
  get 'messages/new'
  get 'messages/index'
  devise_for :users
  root to: "pets#index"
  resources :pets, only: [:index]
  resources :users, only: [:show]
  resources :dogs do
  end
  resources :cats do
  end
  resources :messages, only: [:new, :create]
end