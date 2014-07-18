module QUnit
  module Rails
    class Engine < ::Rails::Engine
      isolate_namespace QUnit::Rails

      config.qunit = ActiveSupport::OrderedOptions.new
      config.qunit.tests_path       = "test"
      config.qunit.javascripts_path = "javascripts"
      config.qunit.stylesheets_path = "stylesheets"
      config.qunit.reset_session    = false
    end
  end
end
