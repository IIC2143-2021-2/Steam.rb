# frozen_string_literal: true

require_relative './controller_macros'

RSpec.configure do |config|
  config.include ControllerMacros, type: :request
end
