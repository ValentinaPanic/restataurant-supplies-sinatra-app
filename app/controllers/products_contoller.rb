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

    get '/products/:id' do
        @product = Product.find(params[:id])
        
        erb :'products/test'
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

end