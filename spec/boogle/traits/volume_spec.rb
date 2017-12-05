require 'spec_helper'

module Boogle
  module Traits
    RSpec.describe Volume do
      subject { Boogle::Client.new(key: 'key').volume.find(id: '_oG_iTxP1pIC') }
      before(:each) do
        allow(Boogle::Service::Request).to receive(:find).and_return(Boogle::Traits::Volume.new(test_book))
      end
      it { should respond_to :page_count }
      it { should respond_to :printed_page_count }
      it { should respond_to :print_type }
      it { should respond_to :average_rating }
      it { should respond_to :kind }
      it { should respond_to :self_link }
      it { should respond_to :etag }
      it { should respond_to :authors }
      it { should respond_to :published_date }
      it { should respond_to :language }
      it { should respond_to :allow_a_non_logging }
      it { should respond_to :content_version }
      it { should respond_to :panelization_summary }
      it { should respond_to :publisher }
      it { should respond_to :description }
      it { should respond_to :industry_identifiers }
      it { should respond_to :categories }
      it { should respond_to :ratings_count }
      it { should respond_to :maturity_rating }
      it { should respond_to :image_links }
      it { should respond_to :layer_info }
      it { should respond_to :offers }
      it { should respond_to :access_info }
      it { should respond_to :quote_sharing_allowed }
      it { should respond_to :volume_info }
      it { should respond_to :id }
      it { should respond_to :title }
      it { should respond_to :access_view_status }
      it { should respond_to :preview_link }
      it { should respond_to :infoLink }
      it { should respond_to :sale_info }
      it { should respond_to :retail_price }
      it { should respond_to :web_reader_link }
      it { should respond_to :buy_link }
      it { should respond_to :canonical_volume_link }
    end
  end
end
