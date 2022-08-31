Rails.application.routes.draw do
  get 'matches/index'
  get 'matches/show'
  get 'matches/delete'
  devise_for :users
  root to: "pages#home"

    resources :chatrooms, only: :show do
      resources :messages, only: :create
    end

    get "profile", to: "pages#profile", as: :profile
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  # Defines the root path route ("/")
  # root "articles#index

    # get 'profile', to: 'users#profile'
    # get 'interests', to: 'interests#profile'

    resources :plants do
      resources :interests, only: [:new, :create]
  #   resources :reviews, only: [:new]
      end
    resources :interests, only: [:index, :show, :destroy]
    # resources :reviews

end
