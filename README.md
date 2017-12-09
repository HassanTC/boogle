# Boogle

Boogle is a gem that takes off your hands from the haslle of dealing with [google books APIs](https://www.google.com)
## Installation

Add this line to your application's Gemfile:

```ruby
gem 'boogle'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install boogle

## Usage
#### 1 - Set the base connection
```ruby
boogle = Boogle::Client.new(key: 'api_key')
```

#### 2 - search for books
search by keyword only
```ruby
boogle.volume.search(keyword: 'flowers')
```
you can choose to search in specific field by
```ruby
boogle.volume.search(keyword: 'war', field: 'inauthor', infield: 'Ernest Hemingway') # get all war books written by Ernest Hemingway
```
[here is a list of other fields](https://developers.google.com/books/docs/v1/using#PerformingSearch)

#### 3 - get book by id

```ruby
boogle.volume.find(id: '_oG_iTxP1pIC')
```

#### 4 - list of books
```ruby
boogle.volume.list(user_id: '', bookshelf_id: '')
```
#### 5 - return libarary books
```ruby
boogle.volume.mylibrary(auth_token: '',  bookshelf_id: '')
```
#### 6 - remove a book
```ruby
boogle.volume.remove(auth_token: '', book_id: '', bookshelf_id: '')
```
#### 7 - Clearing all volumes from my bookshelf
```ruby
boogle.volume.clear(auth_token: '', bookshelf_id: '')
```

## Dealing with bookshelf

#### 1- list user's bookshelves
```ruby
boogle.bookshelf.list(user_id: '')
```

#### 2 - find specific bookshelf
```ruby
boogle.bookshelf.find(user_id: '', bookshelf_id: '')
```

#### 3- my libarary bookshelves
```ruby
boogle.bookshelf.mylibarary(auth_token: '')
```
## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/hassantc/boogle. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).
