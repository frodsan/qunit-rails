module QUnit
  module Generators
    class InstallGenerator < ::Rails::Generators::Base
      source_root File.expand_path("../../templates", __FILE__)

      desc "QUnit setup."
      namespace "qunit:install"

      class_option :javascripts_extension, type: :string, aliases: "-j", default: "js"
      class_option :stylesheets_extension, type: :string, aliases: "-s", default: "css"

      attr_accessor :javascripts_path, :stylesheets_path

      def initialize_config
        qunit = ::Rails.application.config.qunit
        self.javascripts_path = File.join(qunit.tests_path, qunit.javascripts_path)
        self.stylesheets_path = File.join(qunit.tests_path, qunit.stylesheets_path)
      end

      def create_javascript_test_helper
        create_test_helper("javascripts_extension", javascripts_path)
      end

      def create_stylesheet_test_helper
        create_test_helper("stylesheets_extension", stylesheets_path)
      end

      private

      def create_test_helper(extension, path)
        name = test_helper(extension)

        empty_directory(path)

        template(name, File.join(path, name))
      end

      def test_helper(extension)
        "test_helper.#{ options.fetch(extension) }"
      end
    end
  end
end
