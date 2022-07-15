class PassengerMailer < ApplicationMailer
  default from: 'reservations@reservair.com'

  # def reservation_email
  #   @booking = params[:booking]
  #   @passengers = params[:passengers]
  #   @flight_details = params[:flight_details]
  #   @url = 'http://localhost:3000/search'

  #   emails = @passengers.collect(&:email).join(",")
  #   mail(to: emails, subject: 'Reservation Complete')
  # end

  def cancellation_email
    @booking = params[:booking]
    @passengers = params[:passengers]
    @url = 'http://localhost:3000/'

    emails = @passengers.collect(&:email).join(",")
    mail(to: emails, subject: 'Reservation Cancelled')
  end
end

 # can send via bcc also to hide other email recipients from each other
 # mail(to: 'first email address', :bcc => @passengers.map(&:email))