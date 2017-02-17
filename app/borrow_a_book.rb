require 'sinatra/base'
require './app/models/book'


class BorrowABook < Sinatra::Base

  get '/' do
    @books = Book.all
    erb :'books/index'
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
