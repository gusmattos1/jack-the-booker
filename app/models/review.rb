class Review < ApplicationRecord
  validates :review, presence: true, length: {:minimum => 8}

  belongs_to :user 
  belongs_to :restaurant

  def review_owner
  	restaurant.review
  end
end
