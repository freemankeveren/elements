class ProductsController < ApplicationController

  def index
    @products = Product.all
  end

  def show
  end

  private

  def set_product
    @product = current_user.products.find(params[:id])
  end
  
end
