class ShopperController < ApplicationController
	skip_before_action :authorize
	
	include CurrentCart # mixin
	before_action :set_cart 

	def index
		@products = Product.order(:name)
	end
end
