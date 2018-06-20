class AddColumnTotalPriceInOrderLines < ActiveRecord::Migration[5.0]
  def change
    add_column :order_lines, :total_price, :float
  end
end
