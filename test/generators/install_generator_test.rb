require 'test_helper'
require 'generators/generators_test_helper'
require "generators/fullcalendar-rails/install/install_generator"

class InstallGeneratorTest < Rails::Generators::TestCase
  include GeneratorsTestHelper
  tests Fullcalendar::Generators::InstallGenerator

   def setup
    Rails.application.class.stubs(:name).returns("Dummy::Application")
    
    super
  end

  test "Assert application.js require underscore, backbone and backbone_rails_sync and dummy.js" do
    run_generator
    
    assert_file "app/assets/javascripts/application.js" do |application|
      assert_match /require fullcalendar\/dummy/, application
      
      %W{fullcalendar jquery-ui}.each do |require|
        assert_match /#{require}/, application
      end
    end
  end 
 
end
