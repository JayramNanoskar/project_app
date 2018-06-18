class OrderLinesController < ApplicationController
  def create
    # @cart_item = @cart.order_lines.new(order_line_params)
    # @cart_item.save
    # session[:order_id] = @order.id
    # image = Image.find(params[:image_id])
    # @order_line = @cart.addImage(image)
    # puts image
  end

  def update
  end

  def destroy
  end

  private

  def order_line_params
    params.require(:order_lines).permit(:quantity, :image_id)
  end
end
