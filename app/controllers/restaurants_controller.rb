class RestaurantsController < ApplicationController

  before_action :ensure_logged_in, except: [:show, :index]
  before_action :load_restaurant, only: [:show, :edit, :update, :destroy]
  before_action :ensure_user_owns_restaurant, only: [:edit, :update, :destroy]

  def index
    @restaurants = Restaurant.all
  end

  def new
    @restaurant = Restaurant.new
  end

  def edit
  end

  def show
    @review = Review.new
  end

  def update
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
    @restaurant = Restaurant.new
    @restaurant.user_id = current_user.id
    @restaurant.name = params[:restaurant][:name]
    @restaurant.address = params[:restaurant][:address]
    @restaurant.capacity = params[:restaurant][:capacity]
    @restaurant.cost = params[:restaurant][:cost]
    @restaurant.summary = params[:restaurant][:summary]
    @restaurant.menu = params[:restaurant][:menu]
    @restaurant.opening_hour = params[:restaurant][:opening_hour]
    @restaurant.closing_hour = params[:restaurant][:closing_hour]

    if @restaurant.save
      redirect_to restaurant_url(@restaurant.id)
    else
      redirect_to restaurant_path
    end
  end

  def destroy
    @restaurant.destroy

    redirect_to root_path
  end

  def load_restaurant
    @restaurant = Restaurant.find(params[:id])
  end

  def ensure_user_owns_restaurant
    unless current_user.id == @restaurant.user_id
      flash[:alert] = "Please log in"
      redirect_to new_sessions_url
    end
  end
end
