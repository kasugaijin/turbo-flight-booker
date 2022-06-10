class AddAirportsToFlights < ActiveRecord::Migration[7.0]
  def change
    add_reference :flights, :dept_airport, index: true
    add_foreign_key :flights, :airports, column: :dept_airport_id

    add_reference :flights, :arr_airport, index: true
    add_foreign_key :flights, :airports, column: :arr_airport_id
  end
end
