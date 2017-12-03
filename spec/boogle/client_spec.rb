require 'spec_helper'

module Boogle
  RSpec.describe Client do
    it 'raise exception when no givin key' do
      expect { Boogle::Client.new }.to raise_error(MisconfiguredClientError)
    end

    it 'raise exception if givin but nil' do
      expect { Boogle::Client.new(key: nil) }.to raise_error(MisconfiguredClientError)
    end

    it 'raise exception if givin but empty' do
      expect { Boogle::Client.new(key: '') }.to raise_error(MisconfiguredClientError)
    end

    it 'raise exception if givin but not string' do
      expect { Boogle::Client.new(key: []) }.to raise_error(MisconfiguredClientError)
    end

    it 'works find when string' do
      client = Boogle::Client.new(key: 'key')
      expect(client).to be_a(Boogle::Client)
    end

    it 'returns volums object whne #volume' do
      client = Boogle::Client.new(key: 'key')
      expect(client.volume).to be_a(Boogle::Volume)
    end

    it 'returns bookshelf object whne #bookshelf' do
      client = Boogle::Client.new(key: 'key')
      expect(client.bookshelf).to be_a(Boogle::BookShelf)
    end
  end
end
