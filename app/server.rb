require 'sinatra/base'
require './app/models/book'


class BorrowABook < Sinatra::Base
set :public_folder, 'public'

  get '/' do
    @books = Book.all
    erb :index
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
