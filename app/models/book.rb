require 'data_mapper'
require 'dm-postgres-adapter'

class Book

  include DataMapper::Resource

  property :id,     Serial # Serial means that it will be auto-incremented for every record
  property :title,  String

end

DataMapper.setup(:default, "postgres://localhost/borrow_a_book_test")
DataMapper.finalize
DataMapper.auto_upgrade!
