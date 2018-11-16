class Game

  attr_reader :name, :last_move, :possible_moves, :result

  def self.start(name)
    @last_move = [nil,nil]
    @@game = Game.new(name)
  end

  def self.instance
    @@game
  end

  def initialize(name)
    @name = name
    @possible_moves = ["Rock", "Paper", "Scissors"]
  end

  def make_move(move, computer_move=generate_move)
    @last_move = [move,computer_move]
    @result = result(@last_move)
  end

  def result(last_move=@last_move)
    return "Draw" if last_move[1] == last_move[0]
    case last_move[0]
    when "Rock"
      return "Win" if last_move[1] == "Scissors"
      return "Lose" if last_move[1] == "Paper"
    when "Paper"
      return "Win" if last_move[1] == "Rock"
      return "Lose" if last_move[1] == "Scissors"
    when "Scissors"
      return "Win" if last_move[1] == "Paper"
      return "Lose" if last_move[1] == "Rock"
    end
  end



  def generate_move(force_move = nil)
    return force_move if force_move
    @possible_moves.sample
  end

end
