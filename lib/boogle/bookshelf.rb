module Boogle
  class Bookshelf
    attr_accessor :key

    def initialize(key)
      @key = key
    end

    def list(user_id: '')
      Boogle::Service::Request.search(@key, "users/#{user_id}/bookshelves", {})
    end

    def find(user_id: '', bookshelf_id: '')
      Boogle::Service::Request.find(@key, "users/#{user_id}/bookshelves", bookshelf_id)
    end

    def mylibrary(auth_token: nil)
      Boogle::Service::Request.mylibrary(auth_token, @key, 'mylibrary/bookshelves')
    end
  end
end
