require 'spec_helper'

RSpec.describe Boogle do
  it { expect(Boogle::VERSION).to match(/\d+\.\d+\.\d+/) }
end
