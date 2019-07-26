require 'test_helper'

class EstimateMailerTest < ActionMailer::TestCase
  test "new_estimate" do
    mail = EstimateMailer.new_estimate
    assert_equal "New estimate", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end
