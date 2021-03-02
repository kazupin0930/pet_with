Rails.application.routes.draw do
  devise_for :users
  root to: "pets#index"
  resources :pets, only: [:index]
  resources :users, only: [:show]
  resources :dogs do
  end
  resources :cats do
  end
  resources :chat, only: [:new, :create]

end