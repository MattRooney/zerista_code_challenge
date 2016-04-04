require 'test_helper'

class SessionTest < ActiveSupport::TestCase
  def valid_session
    Session.new(start: "04/03/16 10:30",
                          finish: "04/03/16 11:30",
                          name: "Test Session",
                          track: "Test Track"
    )
  end

  test "session is valid" do
    assert valid_session.valid?
  end

  test "session has a name" do
    assert_equal "Test Session", valid_session.name
  end

  test "session has a track" do
    assert_equal "Test Track", valid_session.track
  end

  test "session has a start" do
    assert_equal "0004-03-16 10:30:00 UTC", valid_session.start.to_s
  end

  test "session has a finish" do
    assert_equal "0004-03-16 11:30:00 UTC", valid_session.finish.to_s
  end

  test "session has a start_time" do
    assert_equal "10:30 AM", valid_session.start_time
  end

  test "session has a finish_time" do
    assert_equal "11:30 AM", valid_session.finish_time
  end

end
