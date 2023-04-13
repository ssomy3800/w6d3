Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  # resources :users
  # get all users
  # get '/users', to: 'users#index', as: 'users'
  # post '/users', to: 'users#create'
  # get '/users/:id', to: 'users#show', as: 'user'
  # patch '/users/:id', to: 'users#update'
  # delete '/users/:id', to: 'users#destroy'
  resources :users, only: [:index, :create, :show, :update, :destroy]

  # get '/artworks/:id', to: 'artworks#show'
  # post '/artworks', to: 'artworks#create'
  # patch '/artworks/:id', to: 'artworks#update'
  # delete '/artworks/:id', to: 'artworks#destroy'
  # get '/users/:user_id/artworks', to: 'artworks#index'
  resources :artworks, only: [:show, :create, :update, :destroy]
  
  resources :artwork_shares, only: [:create, :destroy]

  resources :users do
    resources:artworks, only [:index]
  end

end
