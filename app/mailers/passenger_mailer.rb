class PassengerMailer < ApplicationMailer
  default from: 'reservations@reservair.com'

  def reservation_email
    @booking = params[:booking]
    @passengers = params[:passengers]
    @flight_details = params[:flight_details]
    @url = 'http://localhost:3000/search'

    emails = @passengers.collect(&:email).join(",")
    mail(to: emails, subject: 'Reservation Complete')
  end
end