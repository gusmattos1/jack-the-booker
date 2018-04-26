class ReviewsController < ApplicationController

  def create
   @review = Review.new
   @review.user_id = current_user.id
   @review.restaurant_id = params[:restaurant_id]
   @review.review = params[:review][:review]
   @review.rating = params[:review][:rating]
   @review.save
   redirect_to restaurant_url(params[:restaurant_id])
  end

  def edit
   @review = Review.find(params[:id])
   @restaurant = Restaurant.find(params[:restaurant_id])
  end

  def update
    @review = Review.find(params[:id])
    @review.user_id = current_user.id
    @review.restaurant_id = params[:restaurant_id]
    @review.review = params[:review][:review]
    @review.rating = params[:review][:rating]
    @review.save
    redirect_to restaurant_path(params[:restaurant_id])
  end

  def destroy

    @restaurant = Restaurant.find(params[:restaurant_id])
    @review = Review.find(params[:id])
    @review.destroy
    redirect_to restaurant_url(@restaurant.id)
  end

end
