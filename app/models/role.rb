class Role < ApplicationRecord
	after_create :check_user_role
	belongs_to :user
	private
	def check_user_role
		unless current_user.roles.select{|obj| obj.user_type == "user"}.empty?
      current_user.create_cart
    end
	end
end
