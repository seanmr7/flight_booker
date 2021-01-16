class Flight < ApplicationRecord
  belongs_to :origin, foreign_key: "origin_id", class_name: "Airport"
  belongs_to :destination, foreign_key: "destination_id", class_name: "Airport"
end
