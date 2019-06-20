class Restaurant < ApplicationRecord
	belongs_to :user
	# has_many :favourite_restaurants
	# has_many :favourites, through: :favourite_restaurants
	has_many :restaurant_items
	has_many :items, through: :restaurant_items
	has_many :orders
end
