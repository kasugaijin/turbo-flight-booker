class PassengersController < ApplicationController
  def destroy
    @booking = Booking.new(passengers: [Passenger.new])
  end
end