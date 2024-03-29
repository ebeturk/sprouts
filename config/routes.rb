Rails.application.routes.draw do

  devise_for :users
  root to: "plants#index"

  resources :chatrooms, only: [:index, :show, :destroy] do
    resources :messages, only: :create
  end

  get "profile", to: "pages#profile", as: :profile

  get "map", to: "plants#map"

  resources :users, only: [:index, :edit, :update]
  get 'users/:id', to: 'users#show', constraints: { id: /\d+/ }


  resources :plants do
    resources :marks, only: [:create, :edit, :update, :destroy]
    resources :matches, only: [:create, :edit, :update, :destroy]
  end

  resources :marks, only: [:index, :show, :destroy]
  resources :matches
end
