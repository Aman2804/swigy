class DeliveriesController < ApplicationController
	def new
		@delivery = current_user.build_delivery
	end
	def create
		@role = current_user.create_delivery(delivery_params)
	end
	private
	def delivery_params
		params.require(:delivery).permit(:vehicle)
	end
end
