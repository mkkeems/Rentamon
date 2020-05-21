class BookingsController < ApplicationController

  # needs to be nested under character
  def new
    @booking = Booking.new
  end

  def show
    @booking = Booking.find(params[:id])
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.user_id = current_user_id
    @booking.save
  end

  def edit
    @booking = Booking.find(params[:id])
  end

  def update
    @booking = Booking.find(params[:id])
    # confirm booking in update
    @booking.update(booking_params)
  end

  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date)
  end

  def booking_update_params
    params.require(:booking).permit(:confirmed)
  end
end
