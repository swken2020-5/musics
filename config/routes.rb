Rails.application.routes.draw do
<<<<<<< HEAD
  resources :tweets
  root 'tweets#index'
  #get 'top/login'
  #get 'tweets/index'
  #get 'tweets/new'
  #get 'users/index'
  #get 'users/new'
=======
   get 'top/login_form'
  post 'top/login'
  get 'top/logout'
  resources :tweets
  resources :users
  root 'tweets#index'
  resources :likes
>>>>>>> 8dcc63af69b098fbdaabbac531a33b09adc39ea9
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
