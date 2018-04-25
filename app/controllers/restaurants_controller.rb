class RestaurantsController < ApplicationController

  def index
    @restaurants = Restaurant.all
  end

  def new
    @restaurant = Restaurant.new
  end

  def edit
    @restaurant = Restaurant.find(params[:id])
  end

  def show
    @restaurant = Restaurant.find(params[:id])
    @review = Review.new
  end

  def update
    @restaurant = Restaurant.find(params[:id])
    @restaurant.name = params[:restaurant][:name]
    @restaurant.address = params[:restaurant][:address]
    @restaurant.capacity = params[:restaurant][:capacity]
    @restaurant.cost = params[:restaurant][:cost]
    @restaurant.summary = params[:restaurant][:summary]
    @restaurant.menu = params[:restaurant][:menu]
    @restaurant.opening_hour = params[:restaurant][:opening_hour]
    @restaurant.closing_time = params[:restaurant][:cost]

    if @restaurant.save
      redirect_to restaurant_url(@restaurant.id)
    else
      redirect_to restaurant_path
    end
  end

  def create
    @restaurant = Restaurant.find(params[:id])
    @restaurant.user_id = current_user.id
    @restaurant.name = params[:restaurant][:name]
    @restaurant.address = params[:restaurant][:address]
    @restaurant.capacity = params[:restaurant][:capacity]
    @restaurant.cost = params[:restaurant][:cost]
    @restaurant.summary = params[:restaurant][:summary]
    @restaurant.menu = params[:restaurant][:menu]
    @restaurant.opening_hour = params[:restaurant][:opening_hour]
    @restaurant.closing_time = params[:restaurant][:cost]

    if @restaurant.save
      redirect_to restaurant_url(@restaurant.id)
    else
      redirect_to restaurant_path
    end
  end

  def destroy
    @restaurant = Restaurant.find(params[:id])
    @restaurant.destroy

    redirect_to root_path
  end

end
