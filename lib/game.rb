class Game

  attr_reader :name, :last_move, :possible_moves

  def self.start(name)
    @last_move = [nil, nil]
    @@game = Game.new(name)
  end

  def self.instance
    @@game
  end

  def initialize(name)
    @name = name
    @possible_moves = ["Rock", "Paper", "Scissors"]
  end

  def make_move(move, computer_move = generate_move)
    @last_move = [move, computer_move]
    result(@last_move)
  end

  def result(last_move)
    return "Draw" if last_move[1] == last_move[0]
    case last_move[0]
    when "Rock"
      return plays_rock(last_move[1])
    when "Paper"
      return plays_paper(last_move[1])
    when "Scissors"
      return plays_scissors(last_move[1])
    end
  end

  def generate_move
    @possible_moves.sample
  end

  private
  def plays_rock(computer_move)
    case computer_move
    when "Scissors"
      return "Win"
    when "Paper"
      return "Lose"
    end
  end

  def plays_scissors(computer_move)
    case computer_move
    when "Rock"
      return "Lose"
    when "Paper"
      return "Win"
    end
  end

  def plays_paper(computer_move)
    case computer_move
    when "Scissors"
      return "Lose"
    when "Rock"
      return "Win"
    end
  end
end
