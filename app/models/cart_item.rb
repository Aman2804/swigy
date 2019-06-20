class CartItem < ApplicationRecord
	belongs_to :cart
	belongs_to :restaurant_item
end
