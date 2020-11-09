2-player math game where players take turns to answer simple addition problems:
  - A new math question is generated for each turn by picking two numbers between 1 and 20.
  - The player whose turn it is is prompted the question and must answer correctly or lose a life.
  - Players start with 3 lives
  - At the end of each turn, the game outputs current scores for both players
  - The game ends when one player loses all their lives

Entities / Classes:
  - Player (initialize with name, lives)
  - Game  (initialize with players)

Player Methods:
  - answer
  - remove_life 

Game Methods:
  - game_on (boolean for while loop)
  - new_question (nums between 1 - 20)
  - check_answer
  - check_lives
  - change_turn (sets current_player)
  - game_over (game_on = false)