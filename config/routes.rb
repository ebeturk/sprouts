Rails.application.routes.draw do
  resources :matches


  devise_for :users
  root to: "pages#home"

  resources :chatrooms, only: [:index, :show] do
    resources :messages, only: :create
  end
  get "profile", to: "pages#profile", as: :profile


  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  # Defines the root path route ("/")
  # root "articles#index


  resources :users, only: [:index, :show]

    resources :plants do
<<<<<<< HEAD
      resources :marks, only: [:new, :create]
    end
    resources :marks, only: [:index, :show, :destroy]
=======
      resources :marks, only: [:create, :edit, :update]
    end
    resources :marks, only: [:index, :show, :destroy]

  resources :users, only: [:index, :show]
>>>>>>> master

end
