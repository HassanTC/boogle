require 'spec_helper'

module Boogle
  RSpec.describe Client do
    let(:client) { Boogle::Client.new(key: 'AIzaSyBqEUy33m8zdrsZjWOUm2w1bxaGyQEILBc') } # test key

    context '#find' do
      it 'return book object of Boogle::Traits::Volume' do
        response = client.volume.find(id: '_oG_iTxP1pIC')
        expect(response).to be_a(Boogle::Traits::Volume)
      end

      it 'raise error if there is no id' do
        expect { client.volume.find('_oG_iTxP1pIC') }.to raise_error(ArgumentError)
      end
    end

    context '#search' do
      it 'raise exception if wrong key' do
        expect { client.volume.search(bomob: '_oG_iTxP1pIC') }.to raise_error(ArgumentError)
      end

      it 'return array of Boogle::Traits::Volume' do
        response = client.volume.search(keyword: 'flower')
        expect(response).to be_a(Array)
        expect(response.first).to be_a(Boogle::Traits::Volume)
      end
    end
  end
end
