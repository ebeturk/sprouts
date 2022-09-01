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


  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  # Defines the root path route ("/")
  # root "articles#index


    resources :users, only: [:index, :show]


    resources :plants do
      resources :marks, only: [:new, :create, :edit, :update]
    end
    resources :marks, only: [:index, :show, :destroy]

  resources :users, only: [:index, :show]

end
