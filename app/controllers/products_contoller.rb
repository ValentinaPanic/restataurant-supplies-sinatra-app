class ProductsController < ApplicationController

    get '/user/:id' do
        @user = User.find(session[:user_id])
        erb :'users/show'
    end

    get '/products' do
        if logged_in?
        @products = Product.all
        erb :'products/show'
            
        else
            redirect '/login'
        end
    end

   
    get '/products/new' do    
        erb :'products/new'
    end

    post '/products/new' do
        @product = current_user.products.build(params)
        if @product.save
        redirect '/products'
        else
            redirect '/product/new'
        end
    end

    get '/products/:id' do
       if logged_in?
        @product = Product.find(params[:id])
    
        erb :'products/info'
       else
        redirect '/login'
       
        end
    end

    get '/products/:id/edit' do  
        @product = Product.find(params[:id])
          
        if  @product.user == current_user      
        erb :'products/edit'
          end
    end
      
    patch '/products/:id' do 
      @product = Product.find(params[:id])
      if  @product.user == current_user 
      @product.update(name: params[:name], quantity: params[:quantity], vendor_name: params[:vendor_name])
      
      @product.save
      end
      redirect to '/products'
    end

    delete '/products/:id' do 
        @product = Product.find(params[:id])
        @product.delete
        redirect '/products'

    end
end