class FlightsController < ApplicationController

  def index
    @flights = Flight.all
    @dept_airport_options = @flights.map { |flight| flight.dept_airport.name }.uniq
    @arr_airport_options = @flights.map { |flight| flight.arr_airport.name }.uniq
    @date_options = @flights.map { |flight| flight.date_time }.uniq

# show flights that meet params ie after form submitted else blank
  end

end
