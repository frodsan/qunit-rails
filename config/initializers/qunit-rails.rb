qunit = Rails.application.config.qunit
javascripts_path = Rails.root.join(qunit.tests_path, qunit.javascripts_path)
stylesheets_path = Rails.root.join(qunit.tests_path, qunit.stylesheets_path)

Rails.application.config.assets.paths << javascripts_path << stylesheets_path
