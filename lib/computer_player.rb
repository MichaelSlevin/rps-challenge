class Computer_player

  attr_reader :name, :move

  MOVES = ["Rock", "Paper", "Scissors"]

  def initialize
    @name = "Hal"
  end

  def do_move(move=nil)
    @move =  MOVES.sample
  end

end
