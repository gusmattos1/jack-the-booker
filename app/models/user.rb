class User < ApplicationRecord
	validates :password, presence: true, length: {:within => 2..10}, confirmation: true
  
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
