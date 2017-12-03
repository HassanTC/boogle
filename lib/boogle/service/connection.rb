require 'faraday'
require 'json'

module Boogle
  module Service
    class Connection
      BASE_URL = 'https://www.googleapis.com/books/v1/'

      def self.api(key)
        Faraday.new(url: BASE_URL) do |faraday|
          faraday.response :logger
          faraday.adapter Faraday.default_adapter
          faraday.headers['Content-Type'] = 'application/json'
          faraday.params['key'] = key
        end
      end
    end
  end
end
