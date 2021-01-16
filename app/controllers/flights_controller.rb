class FlightsController < ApplicationController

  def index

    @flights = Flight.search( )
    @airport_options = Airport.all.map { |a| [a.city, a.id] }
    @date_options = Flight.all.date.map { |d| [d.]}
  end
end