class PassengersController < ApplicationController
  before_action :setup_booking
  
  def destroy
  end

  def new
  end

  private

  def setup_booking
    @booking = Booking.new(passengers: [Passenger.new])
  end
end
