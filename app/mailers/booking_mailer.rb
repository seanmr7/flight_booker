class BookingMailer < ApplicationMailer

  def new_booking
    @booking = params[:id]
    @passengers = @booking.passengers.all
    @passengers.each do |passenger|
      mail(to: passenger.email, subject: 'Your Flight Information')
    end
    
  end
end
