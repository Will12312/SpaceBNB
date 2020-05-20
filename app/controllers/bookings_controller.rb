class BookingsController < ApplicationController

  before_action :set_booking, only:[:show, :destroy]
  before_action :set_travel, only:[:new, :create]

  def index
    @bookings = Booking.where(user: current_user)
    #only for a user
  end

  def new
  end

  def create
    @booking.travel = @travel
    @booking.user = current_user
    if @booking.save
      redirect_to root_path
      #flashes to warn the user
    else
      render :new
    end
  end

  def show
  end

  def destroy
    @booking.destroy
    redirect_to travel_path(@booking.travel)
  end

  private

  def set_booking
    @booking = Booking.find(params[:id])
  end

  def set_travel
    @booking = Booking.new
    @travel = Travel.find(params[:travel_id])
  end

end
