Rails.application.routes.draw do
  root to: 'home#show'
  resources :cities, only: [:index,:show]
  get '/login',                     to: 'sessions#new'
  post '/login',                    to: 'sessions#create'
  delete '/logout',                 to: 'sessions#destroy'
  resources :states, only: [:index, :show]
  resources :cities, only: [:show]
  resources :users,  only: [:new, :create, :edit, :update, :show]
  resources :comments,  only: [:edit, :show, :update]
  get '/comment/new/:name', to: 'comments#new', as: "new_comment"
  post '/comment/new/:name', to: 'comments#create'
end
