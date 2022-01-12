require 'sinatra/base'
require'sinatra/reloader'

class Battle < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end

  get '/' do
   'Hello battle!'
   'Testing infrastructure working!'
   erb:index
  end

  post '/names' do 
   @player1 = params[:Player1]
   @player2 = params[:Player2]
   puts @player1
    erb:play
  end


  run! if app_file == $0
end