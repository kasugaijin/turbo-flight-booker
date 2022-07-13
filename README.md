# README

This Ruby on Rails application is a flight reservation system that uses a nested form to work with multiple models simultaneously and allow a user to select a flight and add passenger details to make a reservation. Turbo frames/streams allows passenger fields to be added/removed on the booking form without a page refresh. Stimulus JS was used to hide the 'remove' button on the first passenger field. Turbo frames also makes the 'Search Reservation' feature feel like a single page application by showing a reservation without a page reload.

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

**Bugs & Improvements**
The search form makes use of turbo frames to instantly render the show page of the booking that matches the booking reference searched. The 'Cancel' button for the reservation breaks out of the Turbo stream by setting its data target to _top, which enables the cancellation feature to work.

However, if an invalid booking reference is entered, the redirect + flash in the Bookings#search method does not execute until you manually refresh the page. This is a known issue in Turbo Streams right now, with some 'workarounds' but no concrete fix by Turbo as of writing this. See:  https://github.com/hotwired/turbo/issues/138#issuecomment-781214846 

I decided to leave this as is to practice, experience turbo frames when it is working properly. However, in a production app I would either implement a patch, or remove the Turbo frame and use another JS framework should SPA functionality be required. I am currently experimenting with solutions to this issue, incuding having the flash within the turbo frame, or removing the use of a flash and rendering html stating record not found within the turbo frame.

From a design perspective, the passenger form fields could all be aligned. The first field is misaligned with subsequent added fields due to the 'remove' button.


View Live: https://powerful-sea-48710.herokuapp.com/ 


Screenshot:
![Screenshot](./Screensht.png?raw=true "")



