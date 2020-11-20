Rails.application.routes.draw do
  root to: 'tasks#index'
  
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
   root to: 'toppages#index'
  delete 'logout', to: 'sessions#destroy'

  get 'users/new'
  get 'users/create'

  resources :tasks
  
  get 'signup' , to: 'users#new'
  resources :users, only: [:new, :create]
end