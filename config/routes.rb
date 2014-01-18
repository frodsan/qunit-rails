Qunit::Rails::Engine.routes.draw do
  root to: 'test#index'
  get ':action', controller: 'test'
end

Rails.application.routes.draw do
  unless Rails.application.routes.named_routes.routes[:qunit_rails]
    mount Qunit::Rails::Engine => '/qunit'
  end
end
