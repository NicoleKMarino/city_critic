Rails.application.routes.draw do
  root to: 'home#show'
  resources :cities, only: [:index,:show]
  get '/login',                     to: 'sessions#new'
  post '/login',                    to: 'sessions#create'
  delete '/logout',                 to: 'sessions#destroy'
  resources :states, only: [:index, :show]
  resources :cities, only: [:show]
  resources :users,  only: [:new, :create, :edit, :update, :show]
end
