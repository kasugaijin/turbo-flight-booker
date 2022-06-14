class AddBookingReferenceToBookings < ActiveRecord::Migration[7.0]
  def change
    add_column :bookings, :booking_reference, :string
    add_index :bookings, :booking_reference, unique: true
  end
end
