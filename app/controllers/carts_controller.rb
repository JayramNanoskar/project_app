class CartsController < ApplicationController
  def show
  end

  def destroy
    @cart.destroy
    redirect_to 'cart_show_path'
  end
end
