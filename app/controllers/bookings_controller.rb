class BookingsController < ApplicationController

  def new
    @booking = Booking.new
    @flight_details = Flight.find_by(params[:flight_id])
    params[:passengers].to_i.times { @booking.passengers.build }
  end

  def create
    @booking = Booking.create(booking_params)
    
    if @booking.save
      flash.notice = 'saved'
      redirect_to root_path
    else
      flash.alert = 'error'
    end
  end

  def show
    @booking = Booking.find(params[:id])
  end

  private

  def booking_params
    params.require(:booking).permit(:flight_id,
                                    # :passengers,
                                    :booking_reference,
                                    passengers_attributes: [:id, :name, :email] )
  end
end
