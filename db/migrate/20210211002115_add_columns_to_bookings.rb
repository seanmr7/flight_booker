class AddColumnsToBookings < ActiveRecord::Migration[5.2]
  def change
    add_column :bookings, :passengers, :integer
    add_column :bookings, :origin_city, :string
    add_column :bookings, :destination_city, :string
    add_column :bookings, :date, :datetime
  end
end
