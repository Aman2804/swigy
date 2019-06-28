class CartItemsController < ApplicationController
	def create
		@restaurant = Restaurant.find(params[:restaurant_id])
		@restaurant_item = @restaurant.restaurant_items.select{|item| item.item_id == params[:item_id].to_i}.first
		@cart_item = current_user.cart.cart_items.build({restaurant_item_id: @restaurant_item.id, num_of_item: params[:num_of_item].to_i})
		@cart_item.save
		redirect_to add_path(restaurant_id: @restaurant.id)
	end
	def destroy
		@cart_item = CartItem.find(params[:id]).destroy
		@restaurant = RestaurantItem.find(@cart_item.restaurant_item_id).restaurant_id
		@cart_item.destroy
		respond_to do |format|
			format.js
			format.html {redirect_to add_path(restaurant_id: @restaurant)}
	    end
	end
		
end