class PassengerMailer < ApplicationMailer
  default from: 'reservations@reservair.com'

  def reservation_email
    @booking = params[:booking]
    @passengers = params[:passengers]
    @flight_details = params[:flight_details]
    @url = 'https://www.google.com'
    
    @passengers.each do |passenger|
      mail(to: passenger.email, subject: 'Reservation Complete')
    end

  end
end
