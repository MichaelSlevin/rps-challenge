class Game

  attr_reader :name

  def self.start(name)
    @@game = Game.new(name)
  end

  def self.instance
    @@game
  end

  def initialize(name)
    @name = name
  end


end
