# See http://rubydoc.info/gems/rspec-core/RSpec/Core/Configuration
require_relative '../lib/operations.rb'

  RSpec.configure do |config|
  config.run_all_when_everything_filtered = true
  config.filter_run :focus
end