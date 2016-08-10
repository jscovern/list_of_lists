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

  get '/login', to: 'sessions#new', as: 'login'
  post '/sessions', to: 'sessions#create', as: 'sessions'
  delete '/sessions', to: 'sessions#destroy', as: 'destroy_session'
  
  

end
