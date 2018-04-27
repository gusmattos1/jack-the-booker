class Reservation < ApplicationRecord
validates :date, presence: true
validates :time, presence: true 
validates :number_of_people, presence: true, numericality: {only_integer: true}

belongs_to :user
belongs_to :restaurant

end
