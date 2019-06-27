class OrdersController < ApplicationController
	def index
		# @cart = 
	end
	def create
		binding.pry
		@order = current_user.orders.build(restaurant_id: params[:restaurant_id],status: "pending").save
		params[:all_restaurant_id].each do |id|
			@order.order_items.create(restaurant_item_id: id.first,quantity: id.last)
		end
		redirect_to @order
	end
	def show
		@current_order = Order.find(params[:id])
		@order_items = @current_order.order_items.all
	end
end
