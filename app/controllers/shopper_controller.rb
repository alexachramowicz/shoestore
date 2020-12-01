class ShopperController < ApplicationController
	skip_before_action :authorize
	
	include CurrentCart # mixin
	before_action :set_cart 

	def index
		@products = Product.order(:name)
	end

	def search
		if params[:search].empty?
			redirect_to(shopper_path, notice: "search field empty!")
			return
		else
			@search_results = Product.all.where('name LIKE ?', "%#{params[:search]}%")
		end
	end
end
