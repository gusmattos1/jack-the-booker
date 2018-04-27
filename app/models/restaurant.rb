class Restaurant < ApplicationRecord
has_many :reviews
has_many :reservations
belongs_to :user

def total

  reservations.sum(:number_of_people)

end
end
