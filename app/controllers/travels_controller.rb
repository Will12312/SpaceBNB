class TravelsController < ApplicationController

  def destroy
      @travel = Travel.find(params[:id])
      @travel.destroy

      redirect_to travels_path
    end

end
