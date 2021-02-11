class Flight < ApplicationRecord
  belongs_to :origin, foreign_key: "origin_id", class_name: "Airport"
  belongs_to :destination, foreign_key: "destination_id", class_name: "Airport"
  has_many :bookings
def format_date
end

end
