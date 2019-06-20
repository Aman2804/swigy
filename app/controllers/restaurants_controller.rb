class RestaurantsController < ApplicationController
	def new
		binding.pry
		@restaurant = current_user.restaurant.build
	end
	def create
		@restaurant = current_user.restaurant.build(restaurant_params)
	end
	private
	def restaurants_params
		params.require(:restaurant).permit(:designation,:name)		
	end
end
