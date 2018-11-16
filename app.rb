require 'sinatra/base'
require "./lib/game.rb"
require "./lib/player.rb"
require "./lib/computer_player.rb"


class RPS < Sinatra::Base

  get '/' do
    erb(:index)
  end

  post '/initialize' do
    params['Player2'] == "" ? Game.start(Player.new(params['Player1'])) : Game.start(Player.new(params['Player1']),Player.new(params['Player2']))
    redirect("play")
  end

  post '/make-move' do
    p params
    Game.instance.make_move(params["choice"])
    redirect '/result'
  end

  get '/result' do
    @name = Game.instance.names[0]
    @move = Game.instance.last_move[0]
    @result = Game.instance.result
    @computer_move = Game.instance.last_move[1]
    erb(:result)
  end

  get '/play' do
    @name = Game.instance.names[0]
    erb(:play)
  end

end
