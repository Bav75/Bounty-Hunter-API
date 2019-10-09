Rails.application.routes.draw do

  resources :bounties, only: [:index, :create]
  resources :users, only: [:create, :update, :show]
  post '/login', to: 'sessions#login'

end
