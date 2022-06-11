class AddDatetoFlights < ActiveRecord::Migration[7.0]
  def change
    add_column :flights, :date_time, :datetime
  end
end
