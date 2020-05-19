class TravelsController < ApplicationController

  before_action :set_travel, only: [:show, :edit, :update, :destroy]

  def show
  end

  def new
    @travel = Travel.new
  end

  def create
    @travel = Travel.new(travel_params)
    @travel.save
    if @travel.save
      redirect_to travel_path(@travel)
    else
      render :new
    end
  end

  def index
    @travels = Travel.all
  end

  def edit
  end

  def update
    @travel.update(travel_params)

    redirect_to travel_path(@travel)
  end

  def destroy
      @travel.destroy

      redirect_to travels_path
  end

   private

  def travel_params
    params.require(:travel).permit(:destination, :number_of_travelers, :departure_date, :name_of_vehicle, :organiser_id )
  end

  def set_travel
    @travel = Travel.find(params[:id])
  end

end
