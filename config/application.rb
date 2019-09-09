require_relative 'boot'

require 'rails/all'

Bundler.require(*Rails.groups)

module ValidationMessageSample
  class Application < Rails::Application
    config.load_defaults 6.0

    config.i18n.default_locale = :ja
    config.i18n.load_path += Dir[Rails.root.join('config', 'locales', '**', '*.yml').to_s]
    config.active_model.i18n_customize_full_message = true
  end
end
