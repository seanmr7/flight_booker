class AddDepartureTimeToFlight < ActiveRecord::Migration[5.2]
  def change
    add_column :Flights, :departure_time, :datetime
  end
end
