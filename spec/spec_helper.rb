require 'leek'
require 'rspec/core'

Rails.backtrace_cleaner.remove_silencers!

RSpec.configure do |config|
  config.include ActionController
  config.include ActionView
end

# Load support files
Dir["#{File.dirname(__FILE__)}/support/**/*.rb"].each { |f| require f }
