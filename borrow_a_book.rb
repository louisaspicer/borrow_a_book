require 'sinatra/base'

class BorrowABook < Sinatra::Base
  get '/' do
    'Hello BorrowABook!'
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
