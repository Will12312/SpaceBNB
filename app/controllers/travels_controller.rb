class TravelsController < ApplicationController
  def edit
    @travel = Travel.find(params[:id])
  end

  def update
    @travel = Travel.find(params[:id])
    @travel.update(travel_params)
    redirect_to travel_path(@travel)
  end

  private

  def travel_params
    params.require(:travel).permit(:destination, :number_of_travelers, :departure_date, :name_of_vehicle )
  end
end
