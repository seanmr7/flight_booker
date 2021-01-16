class Airport < ApplicationRecord
  has_many :outgoing_flights, foreign_key: "origin_id", class_name: "Flight"
  has_many :incoming_flights, foreign_key: "destination_id", class_name: "Flight"
end
