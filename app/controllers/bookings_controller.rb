class BookingsController < ApplicationController

  def destroy
    @booking = Booking.find(params[:id])
    @booking.destroy
    redirect_to travel_path(@booking.travel)
  end


  def create
    @booking = Booking.new
    @travel = Travel.find(params[:travel_id])
    @booking.travel = @travel
    @booking.save
    redirect_to bookings_path(@travel)
  end

  def new
    @booking = Booking.new
  end

  def index
    @bookings = Booking.all
  end

end
