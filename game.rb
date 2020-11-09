class Game
  attr_accessor :game_on, :current_player, :question, :answer

  def initialize(player_1, player_2)
    @player_1 = player_1
    @player_2 = player_2
    @game_on = true
  end

  def new_question
    num_1 = rand(1..20)
    num_2 = rand(1..20)
    @question = "What does #{num_1} plus #{num_2} equal?"
    @answer = num_1 + num_2
  end

  def change_player
    @current_player = @current_player == @player_1 ? @player_2 : player_1
  end

  def check_answer
    if @current_player.answer == @answer
      puts 'Correct!'
      # Set current player to the other player
      self.change_player
    else 
      puts "Seriously? No!"
      @current_player.lives -= 1
      self.change_player
    end
  end
end