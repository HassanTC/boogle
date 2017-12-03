require 'spec_helper'

RSpec.describe Boogle do
  it 'has a version number' do
    Boogle::VERSION.must_match(/\d+\.\d+\.\d+/)
  end
end
