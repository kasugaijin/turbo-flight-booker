class BookingsController < ApplicationController

  def new
    @booking = Booking.new
    @flight_details = Flight.find_by(params[:flight_id])
    params[:passengers].to_i.times { @booking.passengers.build }
  end

  def create
    unless Booking.where(booking_reference: params[:booking][:booking_reference]).exists?
      
      @booking = Booking.create(booking_params)
      if @booking.save
        flash.notice = 'Booking Saved!'
        redirect_to @booking
      else
        create_error
      end
    end
    create_error
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

  def create_error
    flash.alert = 'Error - please try again.'
    redirect_to root_path
  end
end
