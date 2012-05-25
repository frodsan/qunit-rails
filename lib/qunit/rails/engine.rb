module QUnit
  module Rails
    class Engine < ::Rails::Engine
      isolate_namespace QUnit::Rails
    end
  end
end
