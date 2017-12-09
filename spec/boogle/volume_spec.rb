require 'spec_helper'

module Boogle
  RSpec.describe Client do
    let(:client) { Boogle::Client.new(key: 'api_key') }

    context '#find' do
      before(:each) do
        allow(Boogle::Service::Request).to receive(:find).and_return(Boogle::Traits::Volume.new(test_book))
      end
      it 'return book object of Boogle::Traits::Volume' do
        response = client.volume.find(id: '_oG_iTxP1pIC')
        expect(response).to be_a(Boogle::Traits::Volume)
      end

      it 'raise error if there is no id' do
        expect { client.volume.find('_oG_iTxP1pIC') }.to raise_error(ArgumentError)
      end
    end

    context '#search' do
      before(:each) do
        response = JSON.parse(test_search_book)
        list = []
        response['items'].map do |item|
          list << Boogle::Traits::Volume.new(item)
        end
        allow(Boogle::Service::Request).to receive(:search).and_return(list)
      end

      it 'raise exception if wrong key' do
        expect { client.volume.search(bomob: '_oG_iTxP1pIC') }.to raise_error(ArgumentError)
      end

      it 'return array of Boogle::Traits::Volume' do
        response = client.volume.search(keyword: 'flowers')
        expect(response).to be_a(Array)
        expect(response.first).to be_a(Boogle::Traits::Volume)
      end

      it 'should return the correct volumes when given an inauthor field' do
        response = client.volume.search(keyword: 'flowers', field: 'inauthor', infield: 'keyes')
        authors = response.collect(&:authors)
        expect(authors.all? { |a| a.any? { |author_name| author_name.downcase.include? 'keyes' } })
      end
    end

    context '#list' do
      before(:each) do
        response = JSON.parse(test_search_book)
        list = []
        response['items'].map do |item|
          list << Boogle::Traits::Volume.new(item)
        end
        allow(Boogle::Service::Request).to receive(:search).and_return(list)
      end

      it 'raise exception if wrong key' do
        expect { client.volume.list(bomob: '_oG_iTxP1pIC') }.to raise_error(ArgumentError)
      end

      it 'return array of Boogle::Traits::Volume' do
        response = client.volume.list(user_id: 'user_id', bookshelf_id: 'bookshelf_id')
        expect(response).to be_a(Array)
        expect(response.first).to be_a(Boogle::Traits::Volume)
      end
    end
  end
end
