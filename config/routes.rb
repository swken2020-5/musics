Rails.application.routes.draw do
  resources :tweets
  root 'users#index'
  get 'users/new'
  post 'top/login'
  get 'top/login_form'
  post 'top/login'
  get 'top/logout'
  resources :tweets
  resources :users
  resources :likes
end



