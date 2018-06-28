class OrderLinesController < ApplicationController
  # before_action :set_cart
  before_action :set_order_line, only: [:destroy]

  def create
    # debugger
    image = Image.find(params[:image_id])
    @cart.add_image(image)

    @cart.user_id = current_user.id

    if @cart.save
      redirect_to cart_path(@cart)
    else
      flash[:error] = 'Error'
      redirect_to @image
    end
  end

  def update
  end

  def destroy
    @order_line.destroy
    redirect_to carts_path(@cart)
  end

  private

  def set_order_line
    @order_line = OrderLine.find(params[:id])
  end

  def order_line_params
    params.require(:order_lines).permit(:quantity, :image_id, :cart_id)
  end
end
