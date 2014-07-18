module QUnit
  module Rails
    class TestController < ActionController::Base
      before_action :clear_session

      layout false

      private

      def clear_session
        reset_session if ::Rails.application.config.qunit.reset_session
      end
    end
  end
end
