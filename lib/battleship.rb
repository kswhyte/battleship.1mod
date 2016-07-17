class Battleship

  def initialize
    grid = Grid.new
  end

  def welcome
    
  end
end



puts "Welcome to BATTLESHIP"

puts "Would you like to (p)lay, read the (i)nstructions, or (q)uit?"

# If they enter p or play then they enter the ship layout described below.
# If they enter i or instructions they should be presented with a short explanation of how the game is played.
# If they enter q or quit then the game should exit

#maybe a renderer class that takes care of game grid to frequently display the current game view:
#needs to display what grid squares have been hit, missed, or still open, etc.
#i.e. ship#x where are you, etc.

# maybe use module to store game board
under class use include.ship module

# BASIC REPL
# get input
# draw game screen
# output something
# repeat

game_grid = { a1 => "empty"
              a2 => "miss"
              a3 => "hit"
              a4 => "empty" }

use booleans to check if the choice of missile fired is a hit or miss

              class Ship

              end

#most likely just determine classes depending only on what is needed as you create structure to game
#computer choices: array of possible guesses, and guesses it has already had; then shoot based on that new array that has possible - tried = potential guesses (use .rand, .sample)
