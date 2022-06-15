class BookingsController < ApplicationController

  def new
    @booking = Booking.new
    @flight_details = Flight.find_by(params[:flight_id])
    params[:passengers].to_i.times { @booking.passengers.build }

    @booking_reference = booking_ref_generator
  end

  def create
    if Booking.where(booking_reference: params[:booking][:booking_reference]).exists?
      create_error
    else
      @booking = Booking.create(booking_params)
      if @booking.save
        flash.notice = 'Booking Saved!'
        redirect_to @booking
      else
        create_error
      end
    end
  end

  def show
    @booking = Booking.find(params[:id])
    @flight = Flight.find(@booking.flight_id)
    @passengers = Passenger.where(booking_id: @booking.id)
  end

  private

  def booking_params
    params.require(:booking).permit(:flight_id,
                                    :booking_reference,
                                    passengers_attributes: [:id, :name, :email] )
  end

  def create_error
    flash.alert = 'Error - please try again.'
    redirect_to root_path
  end

  def booking_ref_generator
    SecureRandom.hex(3).upcase
  end
end
