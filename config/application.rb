require File.expand_path('../boot', __FILE__)

require 'rails/all'

# If you have a Gemfile, require the gems listed there, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(:default, Rails.env) if defined?(Bundler)

module Todo
  class Application < Rails::Application
    # Configure sensitive parameters which will be filtered from the log file.
    config.filter_parameters << :password
  end
end
