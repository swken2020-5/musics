Rails.application.routes.draw do
  resources :tweets
  root 'tweets#index'
  get 'top/login'
  get 'tweets/index'
  get 'tweets/new'
  get 'users/index'
  get 'users/new'
  
  get 'top/login_form'
  post 'top/login'
  get 'top/logout'
  resources :tweets
  resources :users
  root 'tweets#index'
  resources :likes
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
