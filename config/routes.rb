Rails.application.routes.draw do
  devise_for :users
  root to: "pets#index"
  resources :pets, only: [:index]
  resources :users, only: [:show]
  resources :dogs, only: [:index, :new, :create, :show]
end
