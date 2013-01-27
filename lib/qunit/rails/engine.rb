module Qunit
  module Rails
    class Engine < ::Rails::Engine
      isolate_namespace Qunit::Rails
    end
  end
end
