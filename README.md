# README

This Ruby on Rails application is a flight reservation system that uses advanced forms to work with multiple models simultaneously and allow a user to reserve a flight. It also makes use of Turbo frames and Turbo Stream to allow passesngers to be added to the booking form without a page refresh. 

There are four models:
- Airport
- Flight
- Booking (called reservation in the UI)
- Passenger

In the database, the Bookings Table is a through table for Flights and Passengers to allow for 'has_many' relationships between the two. Data were seeded in the database using seeds.rb. The range of airports and flight offerings was kept minimal for the sake of this 'toy' application, and the date drop-downs in the first form are fixed because the flight dates are static.

- Form 1: Choose departing/arrival airports and desired date, and number of passengers
- Form 2: Select the preferred available flight
- Form 3: Enter passenger information
- Form 4: Search feature to search reservations by reference #

Improvements
User feedback when filling in forms would be improved through the use of javascript to ensure fields were filled in appropriately. Currently, this app relies on validations on the server side, which requires a click, a page load, and time to provide a generic response to the user. Using javascript would enable real-time feedback without the need for any button clicks or page loads.

View Live: https://shielded-taiga-80011.herokuapp.com/


Screenshot:
![Screenshot](./Screensht.png?raw=true "")



