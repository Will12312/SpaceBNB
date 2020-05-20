class BookingsController < ApplicationController

  before_action :set_booking, only:[:show, :destroy]
  before_action :set_travel, only:[:new, :create]

  def index
    @bookings = policy_scope(Booking).order(created_at: :desc)
    #only for a user
  end

  def new
    authorize @booking
  end

  def create
    @booking.travel = @travel
    @booking.user = current_user

    authorize @booking

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
    authorize @booking
    redirect_to travel_path(@booking.travel)
  end

  private

  def set_booking
    @booking = Booking.find(params[:id])
  end

  def set_travel
    @booking = Booking.new
    @travel = Travel.find(params[:travel_id])
    authorize @booking
  end

end
