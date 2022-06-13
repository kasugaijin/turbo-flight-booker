class FlightsController < ApplicationController

  def index
    @flights = Flight.all
    @airport_names = Airport.order(:name)
    @dates = Flight.all.map { |flight| flight.date }.uniq
    

# show flights that meet params ie after form submitted else blank
  end

end
