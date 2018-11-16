require_relative "move_handler.rb"
class Game

  attr_reader :names, :last_move, :possible_moves, :players, :move_handler, :result

  def self.start(player1,player2=Computer_player.new)
    @@game = Game.new(player1,player2)
  end

  def self.instance
    @@game
  end

  def initialize(player1, player2, move_handler = Move_handler.new)
    @players = [player1, player2]
    @names = [player1.name, player2.name]
    @possible_moves = ["Rock", "Paper", "Scissors"]
    @move_handler = move_handler
  end

  def make_move(move1, move2 = nil)
    players[0].do_move(move1)
    players[1].do_move(move2)
    @last_move = [players[0].move, players[1].move]
    result = move_handler.do_round(@last_move)
    @result = result == -1 ? "It's a draw" : "#{players[result].name} Wins!"
    return @result
  end

end
