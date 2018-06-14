class OrderLine < ApplicationRecord
  belongs_to :image
  belongs_to :cart
end
