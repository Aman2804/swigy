class Favourite < ApplicationRecord
	belongs_to :user
	belongs_to :restaurant
	# has_many :favourite_restaurants
	# has_many :restaurants, through: :favourite_restaurants
end
