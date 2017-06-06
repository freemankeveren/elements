class HomeController < ApplicationController

  def add_to_cart
    product = Product.find(params[:id])
    cart = current_user.cart
    cart.products << product
    cart.save
    redirect_to root_path
  end

  # , Materialize.toast('I am a toast!', 4000)
# <a class="btn" onclick="Materialize.toast('I am a toast', 4000)">Toast!</a>
  # if @car.save
  #     redirect_to @car, notice: 'Car Created!' #rails knows you want to redirect to show pages; #or redirect to car_path_new ??
  #   else
  #
  #     render :new

  def index
    @products = current_user.cart.products
  end

  def delete_from_cart
    cart = current_user.cart

    cart.products.delete_if {|product| product.id.to_s == params[:id]}
    cart.save
    redirect_to root_path
    #params[:id]
    #current_user.cart.products
    #delete_if method
  end

end
