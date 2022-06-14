class AddPassengersToBookings < ActiveRecord::Migration[7.0]
  def change
    add_column :bookings, :passengers, :integer
  end
end
