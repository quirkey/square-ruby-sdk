require 'json'
require 'minitest/autorun'
require 'minitest/hell'
require 'minitest/pride'
require 'minitest/proveit'
require 'square'
require_relative '../test_helper'
require_relative '../http_response_catcher'

class ApiTestBase < Minitest::Test
  parallelize_me!
  include Square

  # Create configuration and set any test parameters
  CONFIG = Configuration.new(
    access_token: ENV.fetch('SQUARE_SANDBOX_TOKEN', 'AccessToken'),
    environment: 'sandbox'
  )
end
