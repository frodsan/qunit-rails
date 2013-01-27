Qunit::Rails::Engine.routes.draw do
  root to: 'test#index'
end

Rails.application.routes.draw do
  mount Qunit::Rails::Engine => '/qunit'
end
