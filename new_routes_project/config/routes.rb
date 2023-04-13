Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  # resources :users
  # get all users
  get '/users', to: 'users#index', as: 'users'
  post '/users', to: 'users#create'
  get '/users/:id', to: 'users#show', as: 'user'
  patch '/users/:id', to: 'users#update'
  delete '/users/:id', to: 'users#destroy'


  get '/artworks', to: 'artworks#index'
  get '/artworks/:id', to: 'artworks#show'
  post '/artworks', to: 'artworks#create'
  patch '/artworks/:id', to: 'artworks#update'
  delete '/artworks/:id', to: 'artworks#destroy'
end
