class Order < ApplicationRecord
	has_many :lineitems, dependent: :destroy


	PAYMENT_TYPES = ["check", "credit card", "venmo", "paypal"]
	validates :name, :email, :address, presence: :true
	validates :paytype, inclusion: PAYMENT_TYPES

	def add_items_from_cart(cart)
		cart.lineitems.each do |item|
			item.cart_id = nil # card id is not needed any longer
			item.order_id = self.id # every item under the current cart points to the new row in the Order model
		end
	end
end
