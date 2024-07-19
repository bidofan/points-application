require_relative "boot"

require "rails/all"

Bundler.require(*Rails.groups)

module PointsApplication
  class Application < Rails::Application
    config.load_defaults 7.1

    config.autoload_lib(ignore: %w(assets tasks))
    config.autoload_paths += Dir[Rails.root.join('app/events/**/*.rb')]

    config.api_only = true

    # Session for Sidekiq
    # This also configures session_options for use below
    config.session_store :cookie_store, key: '_interslice_session'
    # Required for all session management (regardless of session_store)
    config.middleware.use ActionDispatch::Cookies
    config.middleware.use config.session_store, config.session_options
  end
end
