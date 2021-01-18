class FlightsController < ApplicationController

  def index

    @airport_options = Airport.all.map { |a| [a.name, a.id] }
    @date_options = Flight.all.map { |d| [d.date.strftime(%F), d.date].uniq }
    
    if params[:index]
      @flights = Flight.where(
        origin_id: params[:origin_id]
        destination_id: params[:destination_id]
        date: params[:date]
      )
    end
  end
end