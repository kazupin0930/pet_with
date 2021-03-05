Rails.application.routes.draw do
  get 'messages/index'
  devise_for :users
  root to: "pets#index"
  resources :pets, only: [:index]
  resources :users, only: [:show]
  resources :dogs do
  end
  resources :cats do
  end

end