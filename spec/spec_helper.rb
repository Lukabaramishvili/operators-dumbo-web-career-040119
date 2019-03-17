# See http://rubydoc.info/gems/rspec-core/RSpec/Core/Configuration
require_relative '../lib/operations.rb'

RSpec.configure do |config|
  config.add_formatter 'documentation'
end
end