class Flight < ApplicationRecord

  belongs_to :dept_airport, class_name: 'Airport'
  belongs_to :arr_airport, class_name: 'Airport'

  has_many :bookings
  has_many :passengers, through: :bookings

end
