class BookingsController < ApplicationController
  def show
    @booking = Booking.find(params[:id])
    @flight= Flight.find(@booking.flight.id)
  end
  
  def new
    @flight = Flight.find(params[:flight_id])
    @booking = Booking.new
    params[:passengers].to_i.times { @booking.passengers.build }
  end

  def create
    @booking = Booking.new(booking_params)

    if @booking.save
      flash[:success] = "Flight Booked!"
      redirect_to booking_path(id: @booking.id)
    else
      render action: :new
    end
  end


  private
    def booking_params
      params.require(:booking).permit(
        :flight_id,
        :date,
        :origin_city,
        :destination_city,
        passengers_attributes: [:name, :email]
      )
    end
end