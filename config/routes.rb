Rails.application.routes.draw do
  get 'hello_world', to: 'hello_world#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # root '{{page name}}' to set root page
  root 'application#index'

  resources :users

  get "/register", to: 'users#new'
end
