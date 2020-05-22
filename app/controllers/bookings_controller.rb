class BookingsController < ApplicationController

  # needs to be nested under character
  def new
    @character = Character.find(params[:character_id])
    @booking = Booking.new
    @booking.character = @character
    authorize @booking
  end

  def create
    @booking = Booking.new(booking_params)
    @character = Character.find(params[:character_id])
    @booking.character = @character
    authorize @booking
    @booking.user_id = current_user.id
    if @booking.save
      redirect_to dashboard_path
    else
      render "new"
    end
  end

  def edit
    @booking = Booking.find(params[:id])
    authorize @booking
  end

  def update
    @booking = Booking.find(params[:id])
    authorize @booking
    # confirm booking in update
    @booking.update(booking_params)
  end

  def destroy
    @booking = Booking.find(params[:id])
    @booking.destroy
    authorize @booking
    redirect_to dashboard_path
  end

  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date)
  end

  def booking_update_params
    params.require(:booking).permit(:confirmed)
  end
end
