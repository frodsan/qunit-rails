QUnit::Rails::Engine.routes.draw do
  root to: 'test#index'
end

Rails.application.routes.draw do
  mount QUnit::Rails::Engine => '/qunit'
end
