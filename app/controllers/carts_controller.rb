class CartsController < ApplicationController
	def index
		@restaurant = current_user.cart.cart_items.first.restaurant_item_id
		@cart_items = current_user.cart.cart_items.all
		@total = 0
		@all_restaurant_id = current_user.cart.cart_items.pluck(:restaurant_item_id, :num_of_item)
	end
end
