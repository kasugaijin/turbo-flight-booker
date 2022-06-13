class FlightsController < ApplicationController

  def index
    @flights = Flight.all
    @airport_names = Airport.order(:name)

# show flights that meet params ie after form submitted else blank
  end

end
