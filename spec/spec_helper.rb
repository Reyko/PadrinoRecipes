RACK_ENV = 'test' unless defined?(RACK_ENV)
require File.expand_path(File.dirname(__FILE__) + "/../config/boot")

RSpec.configure do |config|
  config.include Rack::Test::Methods
  
  config.before(:suite) do
    DatabaseCleaner.strategy = :transaction
    DatabaseCleaner.clean_with(:truncation)
  end

  config.before(:each) do
    DatabaseCleaner.start
  end

  config.after(:each) do
    DatabaseCleaner.clean
  end
end

# You can use this method to custom specify a Rack app
# you want rack-test to invoke:
#
#   app PadrinoRecipies::App
#   app PadrinoRecipies::App.tap { |a| }
#   app(PadrinoRecipies::App) do
#     set :foo, :bar
#   end
#
def app(app = nil, &blk)
  @app ||= block_given? ? app.instance_eval(&blk) : app
  @app ||= Padrino.application
end


