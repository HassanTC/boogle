module Boogle
  module Traits
    class Volume
      attr_accessor :page_count, :printed_page_count, :print_type, :average_rating
      attr_accessor :kind, :self_link, :etag, :authors, :published_date, :language
      attr_accessor :allow_a_non_logging, :content_version, :panelization_summary
      attr_accessor :publisher, :description, :industry_identifiers, :categories
      attr_accessor :ratings_count, :maturity_rating, :image_links, :layer_info
      attr_accessor :offers, :access_info, :quote_sharing_allowed, :volume_info
      attr_accessor :id, :title, :access_view_status, :preview_link, :infoLink
      attr_accessor :sale_info, :retail_price, :web_reader_link, :buy_link
      attr_accessor :canonical_volume_link

      def initialize(volume_response)
        convert_response_to_obj(volume_response)
      end

      private

      def convert_response_to_obj(volume)
        @kind = volume['kind']
        @id = volume['id']
        @volume_info = volume['volumeInfo']
        @title = volume['volumeInfo']['title']
        @authors = volume['volumeInfo']['authors']
        @publisher = volume['publisher']
        @published_date = volume['publishedDate']
        @description = volume['description']
        @industry_identifiers = volume['industryIdentifiers']
        @page_count = volume['pageCount']
        @printed_page_count = volume['printedPageCount']
        @print_type = volume['printType']
        @categories = volume['categories']
        @average_rating = volume['averageRating']
        @ratings_count = volume['ratingsCount']
        @maturity_rating = volume['maturityRating']
        @allow_a_non_logging = volume['allowAnonLogging']
        @content_version = volume['contentVersion']
        @panelization_summary = volume['panelizationSummary']
        @image_links = volume['imageLinks']
        @language = volume['language']
        @preview_link = volume['preview_link']
        @info_link = volume['infoLink']
        @canonical_volume_link = volume['canonicalVolumeLink']
        @layer_info = volume['layerInfo']
        @sale_info = volume['saleInfo']
        @retail_price = volume['retailPrice']
        @buy_link = volume['buyLink']
        @offers = volume['offers']
        @access_info = volume['accessInfo']
        @web_reader_link = volume['webReaderLink']
        @access_view_status = volume['accessViewStatus']
        @quote_sharing_allowed = volume['quoteSharingAllowed']
      end
    end
  end
end
