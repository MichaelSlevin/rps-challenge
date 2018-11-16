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

  get '/play' do
    @name = Game.instance.name
    erb(:play)
  end

end
