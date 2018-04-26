class ReservationsController < ApplicationController

  def create
    @reservation = Reservation.new
    @reservation.user_id = current_user.id
    @reservation.restaurant_id = params[:restaurant_id]
    @reservation.date = params[:reservation][:date]
    @reservation.time = params[:reservation][:time]
    @reservation.notes = params[:reservation][:notes]
    @reservation.number_of_people = params[:reservation][:number_of_people]
  end

  def edit
   @reservation = Reservation.find(params[:id])
   @restaurant = Restaurant.find(params[:restaurant_id])
  end

  def update
    @reservation = Reservation.new
    @reservation.user_id = current_user.id
    @reservation.restaurant_id = params[:restaurant_id]
    @reservation.date = params[:reservation][:date]
    @reservation.time = params[:reservation][:time]
    @reservation.notes = params[:reservation][:notes]
    @reservation.number_of_people = params[:reservation][:number_of_people]
    redirect_to restaurant_path(params[:restaurant_id])
  end

  def destroy

    @restaurant = Restaurant.find(params[:restaurant_id])
    @reservation = Reservation.find(params[:id])
    @reservation.destroy
    redirect_to restaurant_url(@restaurant.id)
  end
end
