Rails.application.routes.draw do

  resources :users, only: [:create, :update, :show]
  post '/login', to: 'sessions#login'

end
