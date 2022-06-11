class Airport < ApplicationRecord

  has_many :flights, foreign_key: :dept_airport
  has_many :flights, foreign_key: :arr_airport
end
