module Qunit
  module Generators
    class InstallGenerator < ::Rails::Generators::Base
      source_root File.expand_path('../../templates', __FILE__)

      desc 'Setup Qunit into test'

      class_option :coffee, type: :boolean, aliases: '-c', default: false,
                   desc: 'Support for CoffeeScript'

      def create_setup_files
        empty_directory 'test/javascripts'
        empty_directory 'test/stylesheets'

        if !options[:coffee]
          template 'test_helper.js', 'test/javascripts/test_helper.js'
        else
          template 'test_helper.coffee', 'test/javascripts/test_helper.coffee'
        end

        template 'test_helper.css', 'test/stylesheets/test_helper.css'
      end
    end
  end
end
