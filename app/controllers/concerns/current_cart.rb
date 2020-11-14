# module is available to all controllers

module CurrentCart
	def set_cart
		@cart = Cart.find(session[:cart_id]) # if cart_id exists
	rescue ActiveRecord::RecordNotFound
		@cart = Cart.create() # create blank cart with cart_id
		session[:cart_id] = @cart.id
	end
end