class Lineitem < ApplicationRecord
  belongs_to :cart
  belongs_to :product

  def item_total_price
  	self.product.price * self.quantity
  end
end
