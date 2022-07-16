# README


This Ruby on Rails application is a flight reservation system that uses a nested form to work with multiple models simultaneously and allow a user to select a flight and add passenger details to make a reservation. Turbo frames/streams allows passenger fields to be added/removed on the booking form without a page refresh. Stimulus JS was used to hide the 'remove' button on the first passenger field. Action Mailer is used to send confirmation emails upon reservation creation and cancellation.

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


From a design perspective, the passenger form fields could all be aligned. The first field is misaligned with subsequent added fields due to the 'remove' button.

**Turbo Frame Experimentation**


I experimented using Turbo frames on the 'Search Reservation' feature to make the loading of a reservation feel like a single page application. However, when an invalid booking ID is entered, Turb Frames prevents the flash notice and redirect from occurring, which is not ideal as the user should be notified that the booking does not exist. After scouring the Turbo literature, it does not appear that Turbo Frames can handle such cases without patches or use of Turbo Stream to create the new HTML for a flash alert. As such, I decided to remove the Turbo Frame from this feature for now.


View Live: https://powerful-sea-48710.herokuapp.com/ 


Screenshot:
![Screenshot](./Screensht.png?raw=true "")



