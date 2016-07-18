# require './lib/user'

class Message

  def self.welcome_message
    "Welcome to BATTLESHIP!!!\n
    Would you like to (p)lay, read the (i)nstructions, or (q)uit?\n"
  end

  def self.game_rules
    "Battleship is a game in which each player attempts to sink the other's\nship. At the game's start, each player will place their ships with coordinates\n(i.e. A1 A2) on a grid (4x4). Each ship occupies a number of consecutive squares on\nthe grid arranged either horizontally or vertically, determined by the type of\nship: a Destroyer (occupies 2 spaces) or Battleship(occupies 3 spaces).\n\nAfter the ships have been positioned, the game proceeds in a series of rounds, in which\neach player choses a target square in the opponent's grid to shoot at. The opponent\nannounces whether or not the square is occupied by a ship, and if it is a 'miss'\nor 'hit', the grid will be marked accordingly to show picture of the opponent's\nfleet.\n\nWhen all of the squares of a ship have been hit, the ship is sunk, and\na message will be sent from the owner (e.g.'You sank my battleship!''). If all of\na player's ships have been sunk, the game is over and their opponent wins."
  end

  def self.quit_game
    "You quit the game. Dare ye come to survive another battle on the sea again, matey?!\n"
  end

  def self.invalid_selection
    "That is an INVALID SELECTION.\n\n"
  end

  def self.pick_name
    "What is your name?\n"
  end

  def pick_coordinates
    "I am BlackBeard. Can you begin to fathom the secret location of my battleships? See the grid below to chose your own coordinates"
  end

  def self.place_ships
    "Where would you like to place your ships? (i.e. A1 A2)\nThey may be placed horizontally or vertically."
  end


end
