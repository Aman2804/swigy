class DeliveriesController < ApplicationController
	def new
		@delivery = current_user.build_delivery
	end
	def create
		@delivery = current_user.create_delivery(delivery_params)
		if @delivery.save
		redirect_to profile_path
		end 
	end

	private
	def delivery_params
		params.require(:delivery).permit(:vehicle)
	end
end
