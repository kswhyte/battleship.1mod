best place for game board creation is a hash where if you don't indicate a key
in the hash then you can't place a ship or missile


#maybe a renderer class that takes care of game grid to frequently display the current game view:
#needs to display what grid squares have been hit, missed, or still open, etc.
#i.e. ship#x where are you, etc.

# maybe use module to store game board
# under class use include.ship module

# game_grid = { a1 => "empty"
#               a2 => "miss"
#               a3 => "hit"
#               a4 => "empty" }
#
# use booleans to check if the choice of missile fired is a hit or miss
#
#               class Ship
#
#               end

#most likely just determine classes depending only on what is needed as you create structure to game
#computer choices: array of possible guesses, and guesses it has already had; then shoot based on that new array that has possible - tried = potential guesses (use .rand, .sample)
