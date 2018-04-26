class ReservationsController < ApplicationController

  def new
    @reservation = Reservation.new
  end

  def create
    @reservation = Reservation.new
    @reservation.user_id = current_user.id
    @reservation.restaurant_id = params[:restaurant_id]
    @reservation.date = params[:reservation][:date]
    @reservation.time = params[:reservation][:time]
    @reservation.notes = params[:reservation][:notes]
    @reservation.number_of_people = params[:reservation][:number_of_people]
  end

  private 
  def require_ownership
    owner_id = params[]
  end
end
