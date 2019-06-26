class ItemsController < ApplicationController
	before_action :check_user_role
	before_action :check_admin_panel, only: [:destroy,:edit]
	def index
		@items = Item.all
	end
	def new
		@item = Item.new
	end
	def create
		@item = Item.create(item_params)
		if @item.save
			redirect_to items_path
		else
			render 'new'
		end	
	end
	def edit
		@item = Item.find(params[:id])
	end
	def update
		@item = Item.find(params[:id])
		@item.update(item_params)
		redirect_to items_path
	end
	def destroy
		@item = Item.find(:id)
		@item.destroy
		redirect_to items_path
	end
	private
	def item_params
		params.require(:item).permit(:name,:category,:type_of_dish)
	end
	def check_user_role
		if current_user.roles.select{|role| role.user_type == "restaurant"}.empty? ||  current_user.roles.first.user_type != "admin"
			redirect_to profile_path
		end
	end
	def check_admin_panel
		unless current_user.roles.first.user_type == "admin"
			redirect_to profile_path
		end
	end
end
