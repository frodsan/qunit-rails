QUnit::Rails::Engine.routes.draw do
  root to: "test#index"
  get ":action", controller: "test"
end

Rails.application.routes.draw do
  unless Rails.application.routes.named_routes.routes[:q_unit_rails]
    mount QUnit::Rails::Engine => "/qunit"
  end
end
