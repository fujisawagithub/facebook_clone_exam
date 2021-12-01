require_relative 'boot'

require 'rails/all'

Bundler.require(*Rails.groups)

module FbCloneApp
  class Application < Rails::Application
    config.load_defaults 6.0
    config.generators do |g|
      g.test_framework :rspec,
        fixtures: true,
        view_specs: false,
        helper_specs: false,
        routing_specs: false,
        controller_specs: false,
        request_specs: false
      g.fixture_replacement :factory_bot, dir: "spec/factories"
    end
  end
end
