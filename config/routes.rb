Rails.application.routes.draw do

  # bounties routes 
  resources :bounties, only: [:create]
  post '/fetch', to: 'bounties#fetch'

  # users routes
  resources :users, only: [:create, :update, :show]

  # sessions routes 
  post '/login', to: 'sessions#login'

end
