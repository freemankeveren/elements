class ProductsController < ApplicationController

  def index
    @products = Product.all
  end

  def show
    # maybe filter
  end

  # def edit
  # end
  #
  #def new
  # end


  private

  def set_product
    @product = current_user.products.find(params[:id])
  end
end
