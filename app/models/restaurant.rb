class Restaurant < ApplicationRecord
has_many :reviews
has_many :reservations
belongs_to :user
end
