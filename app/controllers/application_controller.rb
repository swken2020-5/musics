class ApplicationController < ActionController::Base
<<<<<<< HEAD
    
=======
    private
    def current_user
        if session[:login_uid]
            User.find_by(uid: session[:login_uid])
        end 
    end 
    helper_method :current_user
>>>>>>> 8dcc63af69b098fbdaabbac531a33b09adc39ea9
end
