module Boogle
  module Traits
    class Bookshelf
      attr_accessor :id, :kind, :self_link, :title, :description, :access
      attr_accessor :created, :volume_count, :volumes_last_updated

      def initialize(bookshelf_response)
        convert_response_to_obj(bookshelf_response)
      end

      private

      def convert_response_to_obj(bookshelf)
        @id = bookshelf['id']
        @kind = bookshelf['kind']
        @self_link = bookshelf['selfLink']
        @title = bookshelf['title']
        @description = bookshelf['description']
        @access = bookshelf['access']
        @created = bookshelf['created']
        @volume_count = bookshelf['volumeCount']
        @volumes_last_updated = bookshelf['volumesLastUpdated']
      end
    end
  end
end
