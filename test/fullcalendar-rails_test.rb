require 'test_helper'

class FullcalendarRailsTest < ActiveSupport::TestCase
  def setup
    @app = Dummy::Application
  end
  
  test "fullcalendar.js is found as an asset" do
    assert_not_nil @app.assets["fullcalendar"]
  end
  
  test "jquery-ui is found as an asset" do
    assert_not_nil @app.assets["jquery-ui"]
  end

  test "fullcalendar.css is found as an asset" do
    assert_not_nil @app.assets["fullcalendar"]
  end
end
