class RolesController < ApplicationController
	def destroy
		current_user.roles.delete
		redirect_to root_path
	end
end
