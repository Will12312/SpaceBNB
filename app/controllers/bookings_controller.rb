class BookingsController < ApplicationController
  def destroy
    @booking = Booking.find(params[:id])
    @booking.destroy
    redirect_to travel_path(@booking.travel)
  end

    private

  def dose_params
    params.require(:booking).permit(:travel_id, :user_id)
  end
end
