class ProductsController < ApplicationController

    get '/user/:id' do
        @user = User.find(session[:user_id])
        erb :'users/show'
    end

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

    get '/products/:id' do
        @product = Product.find_by(params[:id])
        current_user.products.map do |product|
            @product = product
        end
      @product.save
        erb :'products/info'   
        
    end

    get '/products/:id/edit' do  
        @product = Product.find(params[:id])
                
        erb :'products/edit'
    end
      
    patch '/products/:id' do #edit action

      @product = Product.find(params[:id])
     
      @product.update(name: params[:name], quantity: params[:quantity], vendor_name: params[:vendor_name])
      @product.save

      redirect to "/products/#{@product.id}"
    end

    delete "/products/:id" do 
        @product = Product.find(params[:id])
        @product.delete
        redirect "/user/#{current_user.id}"

    end

end