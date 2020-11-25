Rails.application.routes.draw do
<<<<<<< HEAD
  #resources :tweets
  #root 'tweets#index'
=======
  resources :tweets
  root 'tweets#index'
>>>>>>> 0051ed08db760ed3278627f7cc2983ed934e9125
  #get 'top/login'
  #get 'tweets/index'
  #get 'tweets/new'
  #get 'users/index'
  #get 'users/new'
<<<<<<< HEAD
  get 'top/login_form'
=======
   get 'top/login_form'
>>>>>>> 0051ed08db760ed3278627f7cc2983ed934e9125
  post 'top/login'
  get 'top/logout'
  resources :tweets
  resources :users
  root 'tweets#index'
  resources :likes
<<<<<<< HEAD

=======
>>>>>>> 0051ed08db760ed3278627f7cc2983ed934e9125
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
