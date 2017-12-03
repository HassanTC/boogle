module Boogle
  class Volume
    attr_accessor :key
    def initialize(key)
      @key = key
    end

    def find(id: '')
      Boogle::Service::Request.find(@key, 'volumes', id)
    end

    def search(keyword: '', field: nil, download: nil, filter: nil, page: 1, per_page: 5, order_by: nil, projection: nil, type: 'all')
      search_params = { q: query(keyword, field), download: download,
                        filter: filter, startIndex: page, maxResults: per_page,
                        printType: type, projection: projection,
                        orderBy: order_by }.reject { |_, v| v.nil? }
      Boogle::Service::Request.search(@key, 'volumes', search_params)
    end

    private

    def query(keyword, field)
      field ? "#{keyword}+#{field}:keys" : keyword
    end
  end
end
