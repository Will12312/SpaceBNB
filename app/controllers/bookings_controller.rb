class BookingsController < ApplicationController

  before_action :set_booking, only:[:show, :destroy]
  before_action :set_travel, only:[:new, :create]

  def index
    @bookings = policy_scope(Booking).order(created_at: :desc)
    @my_bookings = Booking.joins(:travel).where(travels: {organiser:current_user}).group_by(&:travel)
    respond_to do |format|
      format.html
      format.json { render json: { my_bookings: @my_bookings.keys } }
    end
  end

  def new
    authorize @booking
  end

  def create
    @booking.travel = @travel
    @booking.user = current_user

    authorize @booking

    if @booking.save
      redirect_to bookings_path
      @travel = Travel.find(params[:travel_id])
      @travel.seats_available -= 1
      @travel.people_onboard += 1
      @travel.save
      #flashes to warn the user
    else
      render :new
    end
  end

  def show
  end

  def destroy
    @booking.destroy
    @travel = @booking.travel
    @travel.seats_available += 1
    @travel.people_onboard -= 1
    @travel.save
    authorize @booking
    redirect_to bookings_path
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
