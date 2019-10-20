Rails.application.routes.draw do
  resources :discipleship_communities
  resources :small_groups
  resources :event_types
  resources :events
  resources :assignments
  resources :roles
  resources :user_roles
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # root '{{page name}}' to set root page
  root 'application#index'

  resources :users

  get "/register", to: 'users#new'
end
