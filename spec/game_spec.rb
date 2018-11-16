require "game"

context Game do
  it "#name returns the name that is entered on initialisation" do
    game = Game.new("Michael")
    expect(game.name).to eq("Michael")
  end
end
