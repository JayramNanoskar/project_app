class CreateOrderLines < ActiveRecord::Migration[5.0]
  def change
    create_table :order_lines do |t|
      t.integer :quantity
      t.references :image, foreign_key: true
      t.references :cart, foreign_key: true

      t.timestamps
    end
  end 
end
