# Preview all emails at http://localhost:3000/rails/mailers/booking_mailer
class BookingMailerPreview < ActionMailer::Preview

  def new_booking
    BookingMailer.new_booking(Booking.first, Passenger.first)
  end
end
