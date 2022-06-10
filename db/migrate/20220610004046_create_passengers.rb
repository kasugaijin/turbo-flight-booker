class CreatePassengers < ActiveRecord::Migration[7.0]
  def change
    create_table :passengers do |t|
      t.string :name
      t.string :email, index: { unique: true, name: 'unique_emails'}
      t.string :address
      t.timestamps
    end
  end
end
