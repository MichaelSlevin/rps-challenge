require "game"

context Game do
  let(:player) { double(name: "Michael", do_move: true, move: "Rock") }
  let(:cplayer) { double(name: "Hal", do_move: true, move: "Rock") }
  let(:move_handler) { double(do_round: -1)}
  let(:game) { Game.new(player, cplayer, move_handler) }

  it "#name returns the name that is entered on initialisation" do
    expect(game.names[0]).to eq("Michael")
  end

  it "#make_move stores a move (rock/paper/scissors) in a @last_move" do
    game.make_move("Rock")
    expect(game.last_move[0]).to eq "Rock"
  end

  it "#generate_move returns a randomised value of Rock Paper or Scissors" do
    pending
    expect(["Rock", "Paper", "Scissors"]).to include(game.generate_move)
  end

  it "#result returns win lose or draw" do
    pending
    expect(game.result(["Rock", "Rock"])).to eq "Draw"
  end

end
