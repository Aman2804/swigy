class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
		 		 :recoverable, :rememberable, :validatable
  validates	:name,:contact,:city, 					presence: 		 true
	validates :contact,            		   		 	numericality: true
	validates :gender,											 	inclusion: {in:["Male","Female"],message: " should select"}
	has_many :addresses, as: :addressable
  has_many :restaurants
  has_one :favourite, dependent: :destroy
  has_one :cart, dependent: :destroy
  has_many :orders, dependent: :destroy
  has_many :roles, dependent: :destroy
  has_one :delivery, dependent: :destroy
end
