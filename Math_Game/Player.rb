class Player
  attr_reader :name, :lives
  
  @@num_of_players = 0
  

  def self.how_many_players?
    @@num_of_players
  end

  def initialize(name)
    @@num_of_players += 1
    @name = name
    @lives = 0
  end

  def alive?
    @lives > 0
  end

  def lose_life
    @lives -= 1
  end

  def liven_up
    @lives = 3
  end
end

seb = Player.new('Seb')