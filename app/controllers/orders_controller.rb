class OrdersController < ApplicationController
  def index
    # debugger
    @orders = Order.where(user_id: current_user.id).all
    # @cart_order_line_details = OrderLine.where(cart_id: @cart).all
  end

  def create
    # @order= Order.new(order_params)
# debugger
    puts "======= inside create order function ======="

    # debugger
    cart = Cart.find(params[:cart_id])
    @order = Order.new(cart: cart, user: current_user)
    if @order.save
      flash[:success] = "Order Successfull"
      redirect_to order_path(@order.id)
    else
      flash[:error] = "Something Went Wrong"
      redirect_to cart_path
    end
  end

  def show
  end

  private

  def order_params
      params.require(:order).permit(:cart_id)
  end
end
