module QUnit
  module Rails
    class TestController < QUnit::Rails::ApplicationController
      layout false

      def index
      end
    end
  end
end
