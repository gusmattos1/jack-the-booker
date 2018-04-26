class Review < ApplicationRecord
  belongs_to :user 
  belongs_to :restaurant

  def review_owner
  	restaurant.review
  end
end
