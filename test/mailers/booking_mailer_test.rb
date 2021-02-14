require 'test_helper'

class BookingMailerTest < ActionMailer::TestCase
  # test "the truth" do
  #   assert true
  # end
  test "new_booking" do
    mail = BookingMailer.new_booking
    assert_equal "Your Flight Information", mail.subject
  end
end
