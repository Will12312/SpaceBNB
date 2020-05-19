class TravelsController < ApplicationController

  def destroy
      @travels = Travel.find(params[:id])
      @travels.destroy

      redirect_to travels_path(@booking.travel) ???
    end

end
