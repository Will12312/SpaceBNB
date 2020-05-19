class BookingsController < ApplicationController
  def create
    @booking = Booking.new
    @travel = Travel.find(params[:travel_id])
    @booking.travel = @travel
    @booking.save
    redirect_to travel_path(@travel)
  end
end
