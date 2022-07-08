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

# requires new booking object with nested passenger object for both actions
# set as before_action because objects need to exist prior to executing turbo