module Qunit
  module Generators
    class InstallGenerator < ::Rails::Generators::Base
      attr_accessor :extension, :dir

      source_root File.expand_path('../../templates', __FILE__)

      desc 'Setup Qunit into test'

      class_option :coffee, type: :boolean, aliases: '-c', default: false,
                   desc: 'Support for CoffeeScript'

      class_option :dir, type: :string, default: 'test',
                   desc: 'Folder name for specs'

      def initialize_config
        self.dir = options[:dir]
        self.extension = (options[:coffee]) ? 'coffee' : 'js'
      end

      def create_javascript_file
        empty_directory "#{dir}/javascripts"
        template "test_helper.#{extension}", "#{dir}/javascripts/test_helper.#{extension}"
      end

      def create_stylesheets_file
        empty_directory "#{dir}/stylesheets"
        template 'test_helper.css', "#{dir}/stylesheets/test_helper.css"
      end

      def create_initializer_file
        initializer 'qunit-rails.rb', <<-FILE
Rails.application.config.assets.paths << Rails.root.join('#{dir}', 'javascripts') << Rails.root.join('#{dir}', 'stylesheets')
        FILE
      end
    end
  end
end
