class AdminController < ApplicationController
	skip_before_action :authorize

	include CurrentCart # mixin
	before_action :set_cart 
	
	def index
		@total_orders = Order.count
	end
end
