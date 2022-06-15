class RemoveEmailFromPassengers < ActiveRecord::Migration[7.0]
  def change
    remove_column :passengers, :email, :string
  end
end
