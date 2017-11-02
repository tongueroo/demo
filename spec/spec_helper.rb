ENV["TEST"] = "1"
# Ensures aws api never called. Fixture home folder does not contain ~/.aws/credentails
ENV['HOME'] = "spec/fixtures/home"

# require "simplecov"
# SimpleCov.start

require "pp"
require "byebug"
require "fileutils"
require "bundler"
Bundler.require(:default)

RSpec.configure do |c|
  c.before(:suite) do
    Aws.config.update(stub_responses: true)
  end
end
