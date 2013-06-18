require File.expand_path('../boot', __FILE__)

require 'rails/all'

# Assets should be precompiled for production (so we don't need the gems loaded then)
Bundler.require(*Rails.groups(assets: %w(development test)))

module TestHolding
  class Application < Rails::Application
    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.

    # Set Time.zone default to the specified zone and make Active Record auto-convert to this zone.
    # Run "rake -D time" for a list of tasks for finding time zone names. Default is UTC.
    # config.time_zone = 'Central Time (US & Canada)'

    # The default locale is :en and all translations from config/locales/*.rb,yml are auto loaded.
    # config.i18n.load_path += Dir[Rails.root.join('my', 'locales', '*.{rb,yml}').to_s]
    # config.i18n.default_locale = :de

    config.to_prepare do
      Devise::SessionsController.layout 'signin'
      Devise::RegistrationsController.layout proc{ |controller| user_signed_in? ? "application" : "signin" }
      Devise::ConfirmationsController.layout "signin"
      Devise::UnlocksController.layout "signin"
      Devise::PasswordsController.layout "signin"
    end
    config.cookie_secret = '3b161f7668f938d1aeb73e1137964f8d5ebaf32b9173c2130ecb73b95b610702b77370640dce7e76700fb228f35f7865ab2a5ccd22d00563504a2ea9c3d8dffe'
  end
end
