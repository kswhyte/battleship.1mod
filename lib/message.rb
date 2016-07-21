class Message

  def self.welcome_message
    "Welcome to BATTLESHIP!!!\n\n"
  end

  def self.prompt
    "Would you like to (p)lay, read the (i)nstructions, or (q)uit?\n"
  end

  def self.game_rules
    "Battleship is a game in which each player attempts to sink the other's\nship. At the game's start, each player will place their ships with coordinates\n(i.e. A1 A2) on a grid (4x4). Each ship occupies a number of consecutive squares on\nthe grid arranged either horizontally or vertically, determined by the type of\nship: a Destroyer (occupies 2 spaces) or Battleship(occupies 3 spaces).\n\nAfter the ships have been positioned, the game proceeds in a series of rounds, in which\neach player choses a target square in the opponent's grid to shoot at. The opponent\nannounces whether or not the square is occupied by a ship, and if it is a 'miss'\nor 'hit', the grid will be marked accordingly to show picture of the opponent's\nfleet.\n\nWhen all of the squares of a ship have been hit, the ship is sunk, and\na message will be sent from the owner (e.g.'You sank my battleship!!!'). If all of\na player's ships have been sunk, the game is over and their opponent wins.\n\n"
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

  def self.ponder_coordinates
    "I am BlackBeard. Can you begin to fathom the secret location of my battleships?\nSee the grid below to ponder upon setting your own hidden ship coordinates.\n\n\n"
  end

  def self.computer_places_ships
    "I have laid out my ships secretively on this grid.\nYou now need to layout your two ships.\n\n"
  end

  def self.user_place_destroyer
    "Where would you like to place your first ship, the destroyer?\nThis ship occupies 2 spots, (i.e. A1 A2)\n\nIt may be placed horizontally or vertically."
  end

  def self.confirm_user_destroyer
    "Your destroyer ship is set.\n\n"
  end

  def self.place_user_battleship
    "Where would you like to place your second ship, the battleship?\nThis ship occupies 3 spots, (i.e. A1 A2 A3)\n\nIt may be placed horizontally or vertically."
  end

  def self.confirm_user_battleship
    "Your battleship is set. Let the battle begin!!!"
  end
end
