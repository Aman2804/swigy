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
		@restaurant.save
		if @restaurant.save
			redirect_to restaurants_path
		else
			render 'new'
		end
	end
	def edit
		@restaurant = current_user.restaurants.find(params[:id])
	end
	def show
		@restaurant = current_user.restaurants.find(params[:id])
		@items = Item.all
	end
	def update
		current_user.restaurants.find(params[:id]).update(restaurants_params)
		redirect_to restaurants_path
	end
	def destroy
		current_user.restaurants.find(params[:id]).destroy
		redirect_to restaurants_path
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
