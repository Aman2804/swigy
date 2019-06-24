class RestaurantItemsController < ApplicationController
	def new
		binding.pry
		@restaurant = Restaurant.find(params[:restaurants_id])
		@restaurant_item = @restaurant.restaurant_items.build
	end
	def create
		@restaurant = Restaurant.find(params[:restaurants_id])
		binding.pry
		@restaurant_item = @restaurant.restaurant_items.create(restaurant_items_params)
		binding.pry
	end
	private
	def restaurant_items_params
		params.require(:restaurant_item).permit(:price,:items_id)
	end
end
