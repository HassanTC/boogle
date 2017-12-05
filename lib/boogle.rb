require 'boogle/version'
require 'boogle/client' # user will deal with it

# google server will deal with those
require 'boogle/service/connection'
require 'boogle/service/request'

# how the object will render
require 'boogle/traits/volume'
require 'boogle/traits/bookshelf'

# object operations
require 'boogle/volume'
require 'boogle/bookshelf'

module Boogle
end
