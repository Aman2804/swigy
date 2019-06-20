class OrderItem < ApplicationRecord
	belongs_to :order
	belongs_to :restaurant_item
end
