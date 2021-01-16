# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

# Duration of flights from Origin to Destination in minutes
DURATIONS = {
  'SFO'=> {
    'MIA'=> 335,
    'HNL'=> 334,
    'JFK'=> 330,
    'PIT'=> 435,
    'DAL'=> 210,
    'DCA'=> 780,
    'BOS'=> 419
  },
  'MIA'=> {
    'HNL'=> 1248,
    'JFK'=> 175,
    'PIT'=> 173,
    'DAL'=> 440,
    'DCA'=> 152,
    'BOS'=> 200
  },
  'HNL'=> {
    'JFK'=> 739,
    'PIT'=> 839,
    'DAL'=> 955,
    'DCA'=> 791,
    'BOS'=> 777
  },
  'JFK'=> {
    'PIT'=> 72,
    'DAL'=> 420,
    'DCA'=> 91,
    'BOS'=> 63
  },
  'PIT'=> {
    'DAL'=> 317,
    'DCA'=> 225,
    'BOS'=> 108
  },
  'DAL'=> {
    'DCA'=> 260,
    'BOS'=> 388
  },
  'DCA'=> {
    'BOS'=> 88
  },
  'BOS'=> {}
}

def get_duration(origin, destination)
  DURATIONS[origin][destination] || DURATIONS[destination][origin]
end

def random_time
  today = Time.now
  yesterday = today - 3600*24
  rand(yesterday..today)
end

airports = []
airports[0] = Airport.create(city: "San Francisco", airport_code: "SFO")
airports[1] = Airport.create(city: "Miami", airport_code: "MIA")
airports[2] = Airport.create(city: "Honolulu", airport_code: "HNL")
airports[3] = Airport.create(city: "New York", airport_code: "JFK")
airports[4] = Airport.create(city: "Pittsburgh", airport_code: "PIT")
airports[5] = Airport.create(city: "Dallas", airport_code: "DAL")
airports[6] = Airport.create(city: "Washington, DC", airport_code: "DCA")
airports[7] = Airport.create(city: "Boston", airport_code: "BOS")

p get_duration(airports[0].airport_code, airports[2].airport_code)

Date.today.upto(Date.new(2021, 02, 28)) do |date|
  airports.each do |origin|
    airports.each do |destination|
      next if origin == destination

      3.times do
        Flight.create(
          origin_id: origin[:id],
          destination_id: destination[:id],
          date: date,
          duration: get_duration(origin[:airport_code], destination[:airport_code]),
          departure_time: random_time()
        )
      end
    end
  end
  p date
end
