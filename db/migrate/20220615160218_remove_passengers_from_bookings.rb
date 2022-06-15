class RemovePassengersFromBookings < ActiveRecord::Migration[7.0]
  def change
    remove_column :bookings, :passengers, :integer
  end
end
