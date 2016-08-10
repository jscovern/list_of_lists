Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root to: "welcome#index"
  get '/users/new', to: 'users#new' 
  post '/users', to: 'users#create' 
  get '/users/:id/edit', to: 'users#edit'
  get '/users/:id', to: 'users#show', as: "users_show"
  patch '/users/:id', to: 'users#update'
  delete '/users/:id', to: 'users#destroy'

  get '/lists/:id', to: 'lists#show'
  post '/lists', to: 'lists#create'
  get '/lists/new', to: 'lists#new'
  patch '/lists/:id', to: 'lists#update'
  get '/lists/:id/edit', to: 'lists#edit'
  delete '/lists/:id', to: 'lists#destroy'

  get '/books/:id', to: 'books#show'
  post '/books', to: 'books#create'
  get '/books/new', to: 'books#new'
  patch '/books/:id', to: 'books#update'
  get '/books/:id/edit', to: 'books#edit'
  delete '/books/:id', to: 'books#destroy'

  get '/movies/:id', to: 'movies#show'
  post '/movies', to: 'movies#create'
  get '/movies/new', to: 'movies#new'
  patch '/movies/:id', to: 'movies#update'
  get '/movies/:id/edit', to: 'movies#edit'
  delete '/movies/:id', to: 'movies#destroy'

  get '/places/:id', to: 'places#show'
  post '/places', to: 'places#create'
  get '/places/new', to: 'places#new'
  patch '/places/:id', to: 'places#update'
  get '/places/:id/edit', to: 'places#edit'
  delete '/places/:id', to: 'places#destroy'

  get '/randos/:id', to: 'randos#show'
  post '/randos', to: 'randos#create'
  get '/randos/new', to: 'randos#new'
  patch '/randos/:id', to: 'randos#update'
  get '/randos/:id/edit', to: 'randos#edit'
  delete '/randos/:id', to: 'randos#destroy'

  get '/songs/:id', to: 'songs#show'
  post '/songs', to: 'songs#create'
  get '/songs/new', to: 'songs#new'
  patch '/songs/:id', to: 'songs#update'
  get '/songs/:id/edit', to: 'songs#edit'
  delete '/songs/:id', to: 'songs#destroy'

  get '/login', to: 'sessions#new', as: 'login'
  post '/sessions', to: 'sessions#create', as: 'sessions'
  delete '/sessions', to: 'sessions#destroy', as: 'destroy_session'
  
  

end
