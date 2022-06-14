class Booking < ApplicationRecord

  belongs_to :flight
  has_many :passengers, inverse_of: :bookings

  accepts_nested_attributes_for :passengers

end
