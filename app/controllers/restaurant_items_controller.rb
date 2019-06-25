class RestaurantItemsController < ApplicationController
	def new
		@restaurant = Restaurant.find(params[:restaurants_id])
		@restaurant_item = @restaurant.restaurant_items.build
	end

	def create
		@restaurant = Restaurant.find(params[:restaurants_id])
		@restaurant_item = @restaurant.restaurant_items.build
		@restaurant_item[:item_id] = params[:item]
		@restaurant_item[:price] = params[:price]
		@restaurant_item.save
		redirect_to restaurant_path(current_user,@restaurant)
	end
	def destroy
		@restaurant = Restaurant.find(params[:restaurants_id])
		@restaurant.restaurant_items.select{|obj| obj.item_id == params[:id].to_i }.first.destroy
		redirect_to restaurant_path(current_user,@restaurant)
	end

end
