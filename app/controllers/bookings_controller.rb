class BookingsController < ApplicationController

  def new
    @booking = Booking.new(passengers: [Passenger.new])
    @flight_details = Flight.find(params[:flight_id])

    @booking_reference = booking_ref_generator
  end

  def create
    if Booking.where(booking_reference: params[:booking][:booking_reference]).exists?
      create_error
    else
      @booking = Booking.create(booking_params)
      if @booking.save
        flash.notice = 'Reservation saved & confirmation email sent.'
        redirect_to @booking
        PassengerMailer.with(booking: @booking).reservation_email.deliver_now
        # args passed to .with create params for the mailer
      else
        create_error
      end
    end
  end

  def show
    @booking = Booking.find(params[:id])
    @flight_details = Flight.find(@booking.flight_id)
    @passengers = Passenger.where(booking_id: @booking.id)
  end

  def search
    return if params[:search].blank?

    @booking = Booking.where(booking_reference: params[:search].upcase)[0]

    if @booking.nil?
      flash.alert = 'Reservation does not exist'
      redirect_to search_path
    else
      redirect_to @booking
    end
  end

  def destroy
    @booking = Booking.find(params[:id])
    if @booking.destroy
      flash.notice = 'Reservation cancelled.'
    else
      flash.alert = 'Error - reservation was not cancelled'
    end
    redirect_to root_path, status: :see_other
  end

  private

  def booking_params
    params.require(:booking).permit(:flight_id,
                                    :booking_reference,
                                    passengers_attributes: [:id, :name, :email, :_destroy])
  end

  def create_error
    flash.alert = 'Error - please try again.'
    redirect_to root_path
  end

  def booking_ref_generator
    SecureRandom.hex(3).upcase
  end
end
