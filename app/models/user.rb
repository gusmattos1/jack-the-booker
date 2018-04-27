class User < ApplicationRecord
	validates :password, presence: true, length: {:within => 3..10}, confirmation: true
  	validates :first_name, presence: true, length: {:minimum => 3}
  	validates :last_name, presence: true, length: {:minimum => 3}
  	validates :email, presence: true, uniqueness: true, length: {:minimum => 3}
  has_secure_password

  has_many :reservations
  has_many :reviews
  has_many :restaurants


#this custom association works by routing the relationship between reservations a
# here -> :reservations association -> :restaurant association
  has_many( 
  	:reserved_restaurants, 
  	source: "restaurant", through: :reservations)

end
