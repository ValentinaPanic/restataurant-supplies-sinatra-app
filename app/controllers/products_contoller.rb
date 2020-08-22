class ProductsController < ApplicationController

    get '/products' do
        @products = Product.all
        erb :'products/home'
    end
    get 'products/new' do
        @product = Product.create(params[:product])
        
        erb :'products/new'
    end


end