Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # root '{{page name}}' to set root page
  root 'application#index'

  resources :users
  resources :discipleship_communities
  resources :small_groups
  resources :event_types
  resources :events
  resources :assignments
  resources :roles
  resources :user_roles

  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'

  get "/register", to: 'users#new'
end
