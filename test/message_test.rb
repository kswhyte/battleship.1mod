gem 'minitest', '~> 5.0'
require './test/simplecov_test'
require 'colorize'
require 'colorized_string'
require './lib/message'

class MessageTest < Minitest::Test
  def test_it_welcomes_the_user_to_the_game

    assert_equal "Welcome to BATTLESHIP!!!\n
    Would you like to (p)lay, read the (i)nstructions, or (q)uit?\n", Message.welcome_message
  end

  def test_it_displays_game_rules
    assert_equal "Battleship is a game in which each player attempts to sink the other's\nship. At the game's start, each player will place their ships with coordinates\n(i.e. A1 A2) on a grid (4x4). Each ship occupies a number of consecutive squares on\nthe grid arranged either horizontally or vertically, determined by the type of\nship: a Destroyer (occupies 2 spaces) or Battleship(occupies 3 spaces).\n\nAfter the ships have been positioned, the game proceeds in a series of rounds, in which\neach player choses a target square in the opponent's grid to shoot at. The opponent\nannounces whether or not the square is occupied by a ship, and if it is a 'miss'\nor 'hit', the grid will be marked accordingly to show picture of the opponent's\nfleet.\n\nWhen all of the squares of a ship have been hit, the ship is sunk, and\na message will be sent from the owner (e.g.'You sank my battleship!''). If all of\na player's ships have been sunk, the game is over and their opponent wins.", Message.game_rules
  end

  def test_it_quits_game
    assert_equal "You have left the game. Dare ye come to live another day on the sea again?!\n", Message.quit_game
  end

  def test_it_indicates_an_invalid_selection
    assert_equal "That is an INVALID SELECTION.\n\n", Message.invalid_selection
  end

  def test_it_allows_user_to_pick_a_name
    assert_equal "What is your name?\n", Message.pick_name
  end

  def test_it_asks_user_to_place_ships
    assert_equal "Where would you like to place your ships? (i.e. A1 A2)\nThey may be placed horizontally or vertically.", Message.place_ships
  end
end
