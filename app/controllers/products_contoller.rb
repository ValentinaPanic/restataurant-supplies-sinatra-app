class ProductsController < ApplicationController

    get '/products' do
        @products = Product.all
        erb :'products/show'
    end
    get '/products/new' do
                
        erb :'products/new'
    end
    post '/products/new' do
        @product = Product.create(name: params[:name], quantity: params[:quantity], vendor_name: params[:vendor_name], user_id: current_user.id)

        redirect '/products'
    end

    get '/orders/:id' do
        @user = User.find(session[:user_id])

    end


end