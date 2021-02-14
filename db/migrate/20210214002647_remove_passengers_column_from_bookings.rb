class RemovePassengersColumnFromBookings < ActiveRecord::Migration[5.2]
  def change
    remove_column :bookings, :passengers
  end
end
