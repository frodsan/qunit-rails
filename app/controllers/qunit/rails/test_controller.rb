module Qunit
  module Rails
    class TestController < Qunit::Rails::ApplicationController
      layout false

      def index
      end
    end
  end
end
