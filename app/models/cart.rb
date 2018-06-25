class Cart < ApplicationRecord
  has_many :order_lines
  has_many :orders

  def add_image(image_params)
    # debugger
    current_item = order_lines.find_by(image_id: image_params[:id])

    if current_item
      current_item.quantity += 1
      current_item.total_price += 10
      current_item.save
    else
      new_item =  order_lines.create(image_id: image_params[:id],
                                          quantity: 1,
                                              # cart_id: self.id,
                                              total_price: 10.00)
    end
      # new_item
  end
end
