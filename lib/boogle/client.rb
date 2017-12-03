module Boogle
  class MisconfiguredClientError < StandardError; end

  class Client
    attr_accessor :key

    def initialize(key: nil)
      raise MisconfiguredClientError if key.nil? || key.empty? || !key.is_a?(String)
      @key = key
    end

    def volume
      Boogle::Volume.new(key)
    end

    def bookshelf
      Boogle::BookShelf.new(key)
    end
  end
end
