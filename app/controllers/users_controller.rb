class UsersController < ApplicationController

    get '/' do
        erb :welcome
    end

    # get '/signup' do
    #     erb :'users/signup'
    # end

    # post '/signup' do
    #     @user = User.create(email: params[:email], password: params[:password])
        
    #     redirect '/login'
    # end

    # get '/login' do
    #     erb :'users/login'
    # end

    # post '/login' do
    #     @user = User.find_by(email: params[:email])

    #     if @user  && @user.authenticate(params[:password])
    #         session[:user_id]= @user.id 
    #         redirect to 'managers/home'
    #     else
    #         redirect '/'
    #     end
    # end
    # get '/logout' do
    #     session.clear
    #     redirect '/'
    # end
end