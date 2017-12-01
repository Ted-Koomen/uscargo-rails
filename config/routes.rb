Rails.application.routes.draw do
  get '/', to: 'users#index'
  post 'users/new', to: 'users#new'
end
