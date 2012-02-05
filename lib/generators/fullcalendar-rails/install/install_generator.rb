

module Fullcalendar
  module Generators
    class InstallGenerator < Rails::Generators::Base
     
      source_root File.expand_path("../templates", __FILE__)
  
      desc "This generator installs fullcalendar with a default folder layout in app/assets/javascripts/fullcalendar
                                      
      def inject_fullcalendar
        inject_into_file "app/assets/javascripts/application.js", :before => "//= require_tree" do
          "//= require jquery-ui\n//= require fullcalendar\n"
        end
      end

       def inject_fullcalendar_css
        inject_into_file "app/assets/stylesheets/application.css", :before => "*= require_tree ." do
          "*= require fullcalendar\n*= require fullcalendar.print\n"
        end
      end
    
     
    end
  end
end
