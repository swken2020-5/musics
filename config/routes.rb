Rails.application.routes.draw do
  resources :tweets
  root 'users#index'
  get 'users/new'
  post 'top/login'
  get 'top/login_form'
  post 'top/login'
  get 'top/logout'
  get 'tweets/index'
<<<<<<< HEAD
  get 'get_audio/:id', to: 'tweets#get_audio'
=======
>>>>>>> 1a1dd0d104173b2c9fe926fdd4bd5179982dd988
  
  resources :tweets
  resources :users
  resources :likes
end



