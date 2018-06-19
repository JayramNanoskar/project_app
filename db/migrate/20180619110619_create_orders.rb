class CreateOrders < ActiveRecord::Migration[5.0]
  def change
    create_table :orders do |t|
      t.string :delivery_address
      t.string :delivery_types
      t.string :payment_types

      t.references :cart, foreign_key: true

      t.timestamps
    end
  end
end
