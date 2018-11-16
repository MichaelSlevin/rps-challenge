class Move_handler

  def do_round(last_move)
    @winner = result(last_move)
    return @winner
  end

  def result(last_move)
    return -1 if last_move[1] == last_move[0]
    case last_move[0]
    when "Rock"
      return plays_rock(last_move[1])
    when "Paper"
      return plays_paper(last_move[1])
    when "Scissors"
      return plays_scissors(last_move[1])
    end
  end

  private
  def plays_rock(computer_move)
    case computer_move
    when "Scissors"
      return 1
    when "Paper"
      return 0
    end
  end

  def plays_scissors(computer_move)
    case computer_move
    when "Rock"
      return 1
    when "Paper"
      return 0
    end
  end

  def plays_paper(computer_move)
    case computer_move
    when "Scissors"
      return 1
    when "Rock"
      return 0
    end
  end

end
