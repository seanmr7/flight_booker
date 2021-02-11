class BookingsController < ApplicationController
  def new
    @booking = Booking.new
    @booking.passengers.build
  end

  def create
  end

  private
    def booking_params
    end
end