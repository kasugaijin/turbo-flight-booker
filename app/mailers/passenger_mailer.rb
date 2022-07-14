class PassengerMailer < ApplicationMailer
  default from: 'reservations@reservair.com'

  def reservation_email
    @booking = params[:booking]
    @flight_details = Flight.find(@booking.flight_id)
    @passengers = Passenger.where(booking_id: @booking.id)
    @url = 'https://www.google.com'
    
    @passengers.each do |passenger|
      mail(to: passenger.email, subject: 'Reservation Complete')
    end

  end
end
