class RestaurantsController < ApplicationController

  before_action :ensure_logged_in, except: [:show, :index]
  before_action :load_restaurant, only: [:edit, :update, :destroy, :show]
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
    @reservation = Reservation.new

    if current_user
      @user = User.find(current_user.id)
      @reservations = @user.reservations.where(params[:restaurant_id])
    end
  end

  def update
    @restaurant.name = params[:restaurant][:name]
    @restaurant.address = params[:restaurant][:address]
    @restaurant.capacity = params[:restaurant][:capacity]
    @restaurant.cost = params[:restaurant][:cost]
    @restaurant.summary = params[:restaurant][:summary]
    @restaurant.menu = params[:restaurant][:menu]
    @restaurant.opening_hour = params[:restaurant][:opening_hour]
    @restaurant.closing_hour = params[:restaurant][:closing_hour]
    @restaurant.picture = params[:restaurant][:picture]
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
    @restaurant.picture = params[:restaurant][:picture]

    if @restaurant.save
      redirect_to restaurant_url(@restaurant.id)
    else
      flash[:warning] = @restaurant.errors.full_messages
      redirect_to restaurants_path
    end
  end



  def destroy
    @restaurant = Restaurant.find(params[:id])

    @restaurant.destroy

    redirect_to root_path
  end

  def load_restaurant
    @restaurant = Restaurant.find(params[:id])
  end

  def ensure_user_owns_restaurant
    #restaurant = Restaurant.find(params[:id])
    unless current_user.id == @restaurant.user_id
      flash[:alert] = "Please log in"
      redirect_to restaurant_path(@restaurant)
    end
  end


  def my_restaurants
    
    @user = current_user
    @restaurants = @user.restaurants

  end
end
