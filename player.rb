class Player
  attr_accessor :lives, :answer

  def initialize(name)
    @name = name
    @lives = 3
  end

  def answer=answer
    @answer = answer
  end

  def remove_life
    @lives -= 1
  end
end

player_1 = Player.new('Player 1')
puts player_1.lives
player_1.answer = 1
puts player_1.answer
player_1.remove_life
puts player_1.lives