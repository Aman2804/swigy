class CartItemsController < ApplicationController
	def create
		binding.pry
		@cart_item = current_user.cart.cart_items.build()

		# @cart_item.restaurant_item_id =
	end
end
