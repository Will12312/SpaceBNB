class TravelsController < ApplicationController

  skip_before_action :authenticate_user!, only: [:show, :index]
  before_action :set_travel, only: [:show, :edit, :update, :destroy]

  def index
    @travels = policy_scope(Travel).order(created_at: :desc)
    @markers = @travels.map do |travel|
      {
        lat: travel.latitude,
        lng: travel.longitude
      }
    end
  end

  def show
  end

  def new
    @travel = Travel.new
    authorize @travel #not sure where to put this line
  end

  def create
    @travel = Travel.new(travel_params)
    @travel.organiser = current_user

    authorize @travel

    if @travel.save
      redirect_to travel_path(@travel)
    else
      render :new
    end
  end

  def edit
  end

  def update
    @travel.update(travel_params)

    redirect_to travel_path(@travel)
  end

  def destroy
      @travel.destroy
      authorize @travel
      redirect_to travels_path
  end

   private

  def travel_params
    params.require(:travel).permit(:destination, :number_of_travelers, :departure_date, :name_of_vehicle, :photo)
  end

  def set_travel
    @travel = Travel.find(params[:id])
    authorize @travel
  end

end
