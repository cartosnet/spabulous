class BookingMailer < ApplicationMailer
  def creation_confirmation(booking)
    @booking = booking

    mail(
      to:       @booking.user.email,
      subject:  "Booking done!"
    )
  end
end
