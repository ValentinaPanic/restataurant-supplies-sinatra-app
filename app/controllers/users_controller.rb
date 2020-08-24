class UsersController < ApplicationController

    get '/' do
        erb :welcome
    end

    get '/signup' do
        erb :'users/signup'
    end

    post '/signup' do
        if params[:email].empty? || params[:manager_name].empty? || params[:restaurant_name].empty?
            flash[:error] = "All fields must be completed!" 
            redirect '/signup'
        else
        @user = User.create(email: params[:email], password: params[:password], manager_name: params[:manager_name], restaurant_name: params[:restaurant_name])
        session[:user_id] = @user.id
        redirect '/login'
    end
end

    get '/login' do
        erb :'users/login'
    end

    post '/login' do
        @user = User.find_by(email: params[:email])
        if @user  && @user.authenticate(params[:password])
            session[:user_id]= @user.id 
            redirect "/user/#{@user.id}"
        else
            flash[:error] = " Those Were Invalid Credentials. Try Again!"
            redirect '/login'
        end
        
    end
    get '/logout' do
        session.clear
        redirect '/'
    end
end