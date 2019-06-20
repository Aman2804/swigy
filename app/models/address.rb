class Address < ApplicationRecord
  belongs_to :addressable, polymorphic: true
  validates :flat_no, :location, :city, presence: true
  
end
