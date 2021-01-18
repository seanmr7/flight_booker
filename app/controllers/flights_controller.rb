class FlightsController < ApplicationController

  def index
    
    @airport_options = Airport.all.map { |a| [a.city, a.id] }
    @date_options = Flight.all.map { |d| [d.date.strftime("%m/%d/%Y"), d.date] }.uniq

    if params
      @flights = Flight.where(
        origin_id: params[:origin_id],
        destination_id: params[:destination_id],
        date: params[:date]
      )
    end
  end
end