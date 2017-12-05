require 'byebug'

module Boogle
  module Service
    class Request
      class << self

        def find(key, path, id)
          response = api(key).get("#{path}/#{id}")
          response.status == 200 ? handle_find_response(response.body) : errors(response)
        end

        def add(auth_token, key, path)
          response = api(key).post do |req|
            req.url path
            req.headers['Authorization'] = auth_token
          end
          response.status == 200 ? true : errors(response)
        end

        def remove(auth_token, key, path)
          response = api(key).post do |req|
            req.url path
            req.headers['Authorization'] = auth_token
          end
          response.status == 200 ? true : errors(response)
        end

        def clear(auth_token, key, path)
          response = api(key).post do |req|
            req.url path
            req.headers['Authorization'] = auth_token
          end
          response.status == 200 ? true : errors(response)
        end

        def search(key, path, params)
          response = api(key).get do |req|
            req.url path, params
          end
          response.status == 200 ? handle_search_response(response.body) : errors(response)
        end

        def mylibrary(auth_token, key, path)
          response = api(key).get do |req|
            req.url path
            req.headers['Authorization'] = auth_token
          end
          response.status == 200 ? handle_search_response(response.body) : errors(response)
        end

        def errors(response)
          case response.status
          when 400
            raise Boogle::BadRequest, 'Bad rquest, please check your path again'
          when 401
            raise Boogle::InvalidCredentials, 'Check your Credentials'
          when 403
            raise Boogle::LimitExceedeed, 'you reached your limits'
          when 404
            raise Boogle::ResourceNotFound, 'Resource Not Found'
          when 429
            raise Boogle::TooManyRequests, 'Too many Requests'
          else
            raise Boogle::UnexpectedError, 'Something went wrong'
          end
        end

        def handle_find_response(response)
          response = JSON.parse(response)
          response['kind'].include?('books#bookshelves') ? Boogle::Traits::Bookshelf.new(response) : Boogle::Traits::Volume.new(response)
        end

        def handle_search_response(response)
          response = JSON.parse(response)
          return [] unless response['items']
          klass = response['kind'].include?('books#bookshelves') ? Boogle::Traits::Bookshelf : Boogle::Traits::Volume
          response['items'].map do |item|
            klass.new(item)
          end
        end

        def api(key)
          Boogle::Service::Connection.api(key)
        end
      end
    end
  end
end
