class ShopperController < ApplicationController
	include CurrentCart # mixin
	before_action :set_cart 

	def index
		@products = Product.order(:name)
	end
end
