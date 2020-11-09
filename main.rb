require './player'
require './game'

player_1 = Player.new('Player 1')
player_2 = Player.new('Player 2')

game = Game.new(player_1, player_2)

puts game.current_player
game.new_question
game.get_answer
game.check_answer
puts player_1.lives
puts player_2.lives


puts game.current_player
game.new_question
game.get_answer
game.check_answer
puts player_1.lives
puts player_2.lives
