class FlightsController < ApplicationController

  def index
    @airport_names = Airport.order(:name)
    @dates = Flight.all.map { |flight| flight.date }.uniq
    @flight_options = flight_options
  end

  def flight_options
    return unless params[:date].present? &&
                  params[:dept_airport_id].present? &&
                  params[:arr_airport_id].present? &&
                  params[:dept_airport_id] != params[:arr_airport_id]

      Flight.where(dept_airport_id: params[:dept_airport_id],
                                    arr_airport_id: params[:arr_airport_id],
                                    date: Date.parse(params[:date]))
  end
end
