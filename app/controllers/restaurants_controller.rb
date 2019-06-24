class RestaurantsController < ApplicationController
	before_action :check_user_type
	def index
		@restaurants = current_user.restaurants
	end
	def new
		@restaurant = current_user.restaurants.build
	end
	def create
		@restaurant = current_user.restaurants.build(restaurants_params)
		# binding.pry
		@restaurant.save
		# if @restaurant.save
		# 	redirect_to profile_path
		# else
			render 'new'
		# end
	end
	def edit
		@restaurant = current_user.restaurants
	end
	private
	def restaurants_params
		params.require(:restaurant).permit(:designation,:name)		
	end
	def check_user_type
		unless current_user.roles.first.user_type == "restaurant"
			redirect_to profile_path
		end	
	end
end
