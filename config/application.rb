require_relative 'boot'

require 'rails/all'

Bundler.require(*Rails.groups)

module Tasklist
  class Application < Rails::Application
    config.load_defaults 5.2
    config.i18n.default_locale = :ja
    config.time_zone= 'Tokyo'
    config.active_record.default_timezone = :local

    config.generators do |g|
      g.assets false
      g.helper false
      g.jbuilder false

      g.test_framwork :rspec,
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
