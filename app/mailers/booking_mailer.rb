class BookingMailer < ApplicationMailer

  def new_booking(booking, passenger)
    @booking = booking
    @passenger = passenger
    attachments.inline["email-logo.png"] = File.read("#{Rails.root}/app/assets/images/logo/email-logo.png")

    mail(to: @passenger.email, subject: 'Your Flight Information')
  end
end
