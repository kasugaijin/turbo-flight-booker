class Passenger < ApplicationRecord

  has_many :bookings, inverse_of: :passengers
  has_many :flights, through: :bookings, inverse_of: :passengers
end
