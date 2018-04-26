class ReservationsController < ApplicationController
<<<<<<< HEAD

=======
  before_action :ensure_logged_in, only: [:create, :edit, :update, :destroy]
>>>>>>> master
  def create
    @reservation = Reservation.new
    @reservation.user_id = current_user.id
    @reservation.restaurant_id = params[:restaurant_id]
    @reservation.date = params[:reservation][:date]
    @reservation.time = params[:reservation][:time]
    @reservation.notes = params[:reservation][:notes]
    @reservation.number_of_people = params[:reservation][:number_of_people]
<<<<<<< HEAD
=======
      if @reservation.save
        redirect_to restaurant_path(params[:restaurant_id])
      else
      end
>>>>>>> master
  end

  def edit
   @reservation = Reservation.find(params[:id])
   @restaurant = Restaurant.find(params[:restaurant_id])
  end

  def update
    @reservation.restaurant_id = params[:restaurant_id]
    @reservation.date = params[:reservation][:date]
    @reservation.time = params[:reservation][:time]
    @reservation.notes = params[:reservation][:notes]
    @reservation.number_of_people = params[:reservation][:number_of_people]
    redirect_to restaurant_path(params[:restaurant_id])
  end

  def index
    #@restaurant = Restaurant.find(params[:restaurant_id])
    @reservations = current_user.reservations
    @reserved_restaurants = current_user.reserved_restaurants
    #@locations = current_user.
  end

  def destroy

    @restaurant = Restaurant.find(params[:restaurant_id])
    @reservation = Reservation.find(params[:id])
    @reservation.destroy
    redirect_to restaurant_url(@restaurant.id)
>>>>>>> master
  end

  private
  # def require_ownership
  #   unless @reservation == current_user
  #     redirect_to restaurant_path(@restaurant)

  #   end
  # end
end
