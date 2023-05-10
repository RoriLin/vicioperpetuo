require_relative "boot"

require "rails/all"

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Blog
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    
    config.assets.initialize_on_precompile = true
    config.load_defaults 7.0

    config.assets.enabled = true

    config.assets.paths << Rails.root.join("app", "assets", "images", "covers", "mins", "videos")

    config.assets.paths << "#{Rails.root}/app/assets/images"
    config.assets.paths << "#{Rails.root}/app/assets/images/covers"
    config.assets.paths << "#{Rails.root}/app/assets/images/covers/mins"
    config.assets.paths << "#{Rails.root}/app/assets/images/autores"
    config.assets.paths << "#{Rails.root}/app/assets/javascripts"
    config.assets.paths << "#{Rails.root}/app/assets/stylesheets"

    config.assets.precompile += %w( *.js *.css *.png *.jpg *.jpeg *.gif *.mp4)

    # Configuration for the application, engines, and railties goes here.
    #
    # These settings can be overridden in specific environments using the files
    # in config/environments, which are processed later.
    #
    # config.time_zone = "Central Time (US & Canada)"
    # config.eager_load_paths << Rails.root.join("extras")
  end
end
