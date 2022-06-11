# README

This Ruby on Rails application is a 'flight booker' that uses advanced forms to work with multiple models simultaneously and allow a user to book a flight.

There are four models:
- Airport
- Flight
- Booking
- Passenger

In the database, the Bookings Table is a through table for Flights and Passengers to allow for 'has_many' relationships between the two. Data were seeded in the database using seeds.rb. The range of airports and flight offerings was kept minimal for the sake of this 'toy' application, and the date drop-downs in the first form are fixed because the flight dates are static.

Form 1: Choose departing/arrival airports and desired date, and number of passengers
Form 2: Select the preferred available flight
Form 3: Enter passenger information




