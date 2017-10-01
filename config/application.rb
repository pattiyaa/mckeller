require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Mckeller
  class Application < Rails::Application
    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.
  	config.active_record.belongs_to_required_by_default = false
  	config.time_zone = 'Bangkok'
 	config.active_record.default_timezone = :local
 	MiniMagick.configure do |config|
	  config.validate_on_create = false
	end
  end
end
