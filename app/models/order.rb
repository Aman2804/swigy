class Order < ApplicationRecord
	belongs_to :user
	has_many :order_items
	has_many :restaurant_items, through: :order_items
	has_one :payment
	belongs_to :restaurant
	has_one :role
end
