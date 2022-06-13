class FlightsController < ApplicationController

  def index
    @airport_names = Airport.order(:name)
    @dates = Flight.all.map { |flight| flight.date }.uniq

    return if params[:arr_airport_id].nil?

    @flight_options = Flight.where(dept_airport_id: params[:dept_airport_id],
                                   arr_airport_id: params[:arr_airport_id],
                                   date: Date.parse(params[:date]))
  end

end