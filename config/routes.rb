Rails.application.routes.draw do
  get 'marks/index'
  get 'marks/new'
  get 'marks/create'
  get 'marks/edit'
  get 'marks/update'
  get 'marks/delete'
  get 'matches/index'
  get 'matches/show'
  get 'matches/delete'
  devise_for :users
  root to: "pages#home"

  resources :chatrooms, only: :show do
    resources :messages, only: :create
  end
  get "profile", to: "pages#profile", as: :profile

  resources :users, only: [:index, :show]

  resources :plants do
    resources :interests, only: [:new, :create]
  end
  resources :interests, only: [:index, :show, :destroy]
end
