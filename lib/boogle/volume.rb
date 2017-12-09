module Boogle
  class Volume
    attr_accessor :key
    def initialize(key)
      @key = key
    end

    def find(id: '')
      Boogle::Service::Request.find(@key, 'volumes', id)
    end

    def search(keyword: '', field: nil, infield: nil, download: nil, filter: nil, page: 1, per_page: 5, order_by: nil, projection: nil, type: 'all')
      search_params = { q: query(keyword, field, infield), download: download,
                        filter: filter, startIndex: page, maxResults: per_page,
                        printType: type, projection: projection,
                        orderBy: order_by }.reject { |_, v| v.nil? }
      Boogle::Service::Request.search(@key, 'volumes', search_params)
    end

    def list(user_id: '', bookshelf_id: '')
      Boogle::Service::Request.search(@key, "users/#{user_id}/bookshelves/#{bookshelf_id}/volumes", {})
    end

    def mylibrary(auth_token: nil, bookshelf_id: '')
      Booogle::Service::Request.mylibrary(auth_token, @key, "mylibrary/bookshelves/#{bookshelf_id}/volumes")
    end

    def add(auth_token: nil, book_id: '', bookshelf_id: '')
      Booogle::Service::Request.add(auth_token, @key, "mylibrary/bookshelves/#{bookshelf_id}/addVolume?volumeId=#{book_id}")
    end

    def remove(auth_token: nil, book_id: '', bookshelf_id: '')
      Booogle::Service::Request.add(auth_token, @key, "mylibrary/bookshelves/#{bookshelf_id}/removeVolume?volumeId=#{book_id}")
    end

    def clear(auth_token: nil, bookshelf_id: '')
      Booogle::Service::Request.clear(auth_token, @key, "mylibrary/bookshelves/#{bookshelf_id}/clearVolumes")
    end

    private

    def query(keyword, field, infield)
      field && infield ? "#{keyword}+#{field}:#{infield}" : keyword
    end
  end
end
