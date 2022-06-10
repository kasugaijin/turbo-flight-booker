class CreateFlights < ActiveRecord::Migration[7.0]
  def change
    create_table :flights do |t|
      t.string :number
      t.integer :duration
      t.string :aircraft
      t.timestamps
    end
  end
end
