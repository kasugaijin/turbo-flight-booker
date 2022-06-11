class Airport < ApplicationRecord

  has_many :departing_flights, class_name: 'Flight', foreign_key: :dept_airport
  has_many :arriving_flights, class_name: 'Flight', foreign_key: :arr_airport
end
