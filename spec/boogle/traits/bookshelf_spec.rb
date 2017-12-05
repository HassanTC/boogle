require 'spec_helper'

module Boogle
  module Traits
    RSpec.describe Bookshelf do
      subject { Boogle::Client.new(key: 'key').bookshelf.find(user_id: '', bookshelf_id: '') }
      before(:each) do
        allow(Boogle::Service::Request).to receive(:find).and_return(Boogle::Traits::Bookshelf.new(test_bookshelf))
      end
      it { should respond_to :id }
      it { should respond_to :kind }
      it { should respond_to :self_link }
      it { should respond_to :title }
      it { should respond_to :description }
      it { should respond_to :access }
      it { should respond_to :created }
      it { should respond_to :volume_count }
      it { should respond_to :volumes_last_updated }
    end
  end
end
