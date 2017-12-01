Rails.application.routes.draw do
  get '/', to: 'users#index'
  post 'users', to: 'users#new'
  post '/login', to: 'sessions#login'
  get '/users/:access_token', to: 'users#show'
end
