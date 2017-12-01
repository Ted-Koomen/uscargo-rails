Rails.application.routes.draw do
  get '/', to: 'users#index'
  post 'users/new', to: 'users#new'
  post '/login', to: 'sessions#login'
end
