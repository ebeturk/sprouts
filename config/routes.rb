Rails.application.routes.draw do

  devise_for :users
  root to: "plants#index"

  resources :chatrooms, only: [:index, :show] do
    resources :messages, only: :create
  end

  get "profile", to: "pages#profile", as: :profile

  get "map", to: "plants#map"

  resources :users, only: [:index, :show] do
    resources :reviews, only: [:new, :create]
  end

  resources :reviews, only: [:destroy]

  resources :plants do
    resources :marks, only: [:create, :edit, :update]
  end
  
  resources :marks, only: [:index, :show, :destroy]
  resources :matches

end
