class ProductsController < ApplicationController

  def index
    puts '*******************'
    puts 'user'
    puts session[:current_user_email]
    puts '*******************'
    @products = Product.all.order(created_at: :desc)
  end

  def show
    @product = Product.find params[:id]
  end

end
