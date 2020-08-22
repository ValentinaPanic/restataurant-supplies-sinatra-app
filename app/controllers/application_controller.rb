require './config/environment'

class ApplicationController < Sinatra::Base

  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
    enable :sessions
    set :session_secret, "restaurantlife"
  end
  helpers do
    def logged_in?
      !!current_user
       
    end

    def current_user
      @user = User.find(session[:user_id])
      
    end
  end
 
  

end
