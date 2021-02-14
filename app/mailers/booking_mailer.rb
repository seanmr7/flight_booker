class BookingMailer < ApplicationMailer

  def new_booking(booking, passenger)
    @booking = booking
    @passenger = passenger

    mail(to: passenger.email, subject: 'Your Flight Information')
    
  end
end
