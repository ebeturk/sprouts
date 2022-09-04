Rails.application.routes.draw do
  resources :matches


  devise_for :users
  root to: "plants#index"

  resources :chatrooms, only: :show do
    resources :messages, only: :create
  end

  get "profile", to: "pages#profile", as: :profile


  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  # Defines the root path route ("/")
  # root "articles#index

  #resources :reviews, only: [:new, :create, :destroy]

  resources :users, only: [:index, :show] do
    resources :reviews, only: [:new, :create]
  end
  resources :reviews, only: [:destroy]

  resources :plants do
    resources :marks, only: [:create, :edit, :update]
  end

  resources :marks, only: [:index, :show, :destroy]

end
