module Qunit
  module Generators
    class InstallGenerator < ::Rails::Generators::Base
      source_root File.expand_path('../../templates', __FILE__)

      desc 'Setup Qunit into test'

      def create_setup_files
        empty_directory 'test/javascripts'
        template 'test_helper.js',  'test/javascripts/test_helper.js'
        empty_directory 'test/stylesheets'
        template 'test_helper.css', 'test/stylesheets/test_helper.css'
      end
    end
  end
end
