Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"

  get "profile", to: "pages#profile", as: :profile
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :plants do
    resources :insterests, only: [:new, :create]
  end
  resources :interests, only: [:index, :show, :destroy]
end
