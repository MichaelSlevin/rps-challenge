require "game"

context Game do
  let(:game) { game = Game.new("Michael") }
  it "#name returns the name that is entered on initialisation" do
    expect(game.name).to eq("Michael")
  end
  it "#make_move stores a move (rock/paper/scissors) in a @last_move" do
    game.make_move("Rock")
    expect(game.last_move[0]).to eq "Rock"
  end
  it "#generate_move returns a randomised value of Rock Paper or Scissors" do
    expect(["Rock", "Paper", "Scissors"]).to include(game.generate_move)
  end
  it "#result returns win lose or draw" do
      expect(game.result(["Rock","Rock"])).to eq "Draw"
  end
end
