Rails.application.routes.draw do
<<<<<<< HEAD
=======
  resources :tweets
  root 'tweets#index'
  get 'top/login'
  get 'tweets/index'
  get 'tweets/new'
  get 'users/index'
  get 'users/new'
  
>>>>>>> dff8f57af05c32d4c80c3cad79df7fafeb605538
  get 'top/login_form'
  post 'top/login'
  get 'top/logout'
  resources :tweets
  resources :users
  root 'tweets#index'
  resources :likes
end



