Rails.application.routes.draw do
  get 'users', to: 'users#index'
  post 'users/new', to: 'users#new'
end
