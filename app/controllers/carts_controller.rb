class CartsController < ApplicationController
	def index
		@restaurant = current_user.cart.cart_items.first.restaurant_item_id
		@cart_items = current_user.cart.cart_items.all
		@total = 0
	end
	def edit
		@restaurant = current_user.cart.cart_items.first.restaurant_item_id
		@cart_items = current_user.cart.cart_items.all
	end
end
