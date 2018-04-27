class Restaurant < ApplicationRecord
validates :name, presence: true, length: {:minimum => 3}, uniqueness: true
validates :address, presence: true, length: {:minimum => 8}
validates :capacity, presence: true, numericality: {only_integer: true}
validates :cost, presence: true, numericality: {only_integer: true}
validates :opening_hour, presence: true, numericality: {only_integer: true}
validates :closing_hour, presence: true, numericality: {only_integer: true}
validates :summary, presence: true, length: {:minimum => 8}
validates :menu, presence: true, length: {:minimum => 8}
validates :picture, presence: true

has_many :reviews
has_many :reservations
belongs_to :user

	def total
	  reservations.sum(:number_of_people)
	end

end
