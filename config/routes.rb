Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
root 'users#index'
get '/login', to: 'sessions#new'
post '/login', to: 'sessions#create'
delete '/logout', to: 'sessions#destroy'
  resources :users
  resources :articles
  resources :categories
  resources :votes
end
