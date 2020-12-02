Rails.application.routes.draw do
  resources :tweets
  
  
  root 'users#index'
  get 'users/new'
  
  post 'top/login'
  get 'top/login_form'
  get 'top/logout'
  post 'tweets/index'
  get 'tweets/new'
  
  resources :tweets
  resources :users
  resources :likes
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
