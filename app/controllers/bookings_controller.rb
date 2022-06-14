class BookingsController < ApplicationController

  def new
    @booking = Booking.new
    @flight_details = Flight.find_by(params[:flight_id])
  end

  def create
    @booking = Booking.new(booking_params)
  end

  def show
    @booking = Booking.find(params[:id])
  end

  private

  def booking_params
    
  end

end
