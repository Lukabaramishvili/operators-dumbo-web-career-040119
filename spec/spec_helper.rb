# See http://rubydoc.info/gems/rspec-core/RSpec/Core/Configuration
require_relative '../lib/operations.rb'

RSpec.configure do |c|
  c.add_setting :custom_setting
end

RSpec.describe "custom setting" do
  it "is nil by default" do
    expect(RSpec.configuration.custom_setting).to be_nil
  end

  it "acts false by default" do
    expect(RSpec.configuration.custom_setting).to be_falsey
  end

  it "is exposed as a predicate" do
    expect(RSpec.configuration.custom_setting?).to be_falsey
  end

  it "can be overridden" do
    RSpec.configuration.custom_setting = true
    expect(RSpec.configuration.custom_setting).to be_truthy
    expect(RSpec.configuration.custom_setting?).to be_truthy
  end
end
