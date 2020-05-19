class TravelsController < ApplicationController

  def index
    @travels = Travel.all
  end
  
  def edit
    @travel = Travel.find(params[:id])
  end

  def update
    @travel = Travel.find(params[:id])
    @travel.update(travel_params)
    
    redirect_to travel_path(@travel)
  end

  def destroy
      @travel = Travel.find(params[:id])
      @travel.destroy

      redirect_to travels_path
  end
  
   private

  def travel_params
    params.require(:travel).permit(:destination, :number_of_travelers, :departure_date, :name_of_vehicle )
  end
  
end
