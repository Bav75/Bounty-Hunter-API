Rails.application.routes.draw do

  resources :bounties, only: [:create, :update, :show]
  resources :users, only: [:create, :update, :show]
  post '/login', to: 'sessions#login'

end
