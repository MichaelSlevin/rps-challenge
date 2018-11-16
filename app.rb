require 'sinatra/base'
require "./lib/game.rb"

class RPS < Sinatra::Base

  get '/' do
    erb(:index)
  end

  post '/initialize' do
    Game.start(params['Player'])
    redirect("play")
  end

  post '/make-move' do
    p params
    Game.instance.make_move(params["choice"])
    redirect '/result'
  end

  get '/result' do
    @name = Game.instance.name
    @move = Game.instance.last_move[0]
    @result = Game.instance.result(Game.instance.last_move)
    @computer_move = Game.instance.last_move[1]
    erb(:result)
  end

  get '/play' do
    @name = Game.instance.name
    erb(:play)
  end

end
