class Game
  attr_accessor :game_on, :current_player, :answer

  def initialize(player_1, player_2)
    @player_1 = player_1
    @player_2 = player_2
    @game_on = true
    @current_player = player_1
  end

  def new_question
    num_1 = rand(1..20)
    num_2 = rand(1..20)
    puts "#{@current_player}: What does #{num_1} plus #{num_2} equal?"
    @answer = num_1 + num_2
  end

  def get_answer
    @current_player.answer = gets.chomp.to_i
  end

  def change_player
    @current_player = @current_player == @player_1 ? @player_2 : @player_1
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

  def game_over
    game_on = false
    message = @player_1.lives == 0 ? "Player 2 wins with a score of #{@player_2.lives}/3" : "Player 1 wins with a score of #{@player_1.lives}/3"
    puts message
  end

  def check_lives 
    if @player_1.lives == 0 || @player_2.lives == 0
      self.game_over
    end
  end
end