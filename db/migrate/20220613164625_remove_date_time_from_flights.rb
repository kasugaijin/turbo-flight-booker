class RemoveDateTimeFromFlights < ActiveRecord::Migration[7.0]
  def change
    remove_column :flights, :date_time, :datetime
  end
end
