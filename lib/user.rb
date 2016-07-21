require './lib/game_grid'
require './lib/game'

class User
  attr_reader :game 

  def initialize
    @game = Game.new
    @game_grid = GameGrid.new
  end

  def retrieve_user_destroyer
    game.place_user_destroyer
    @user_selection = gets.chomp.to_s
  end

  def retrieve_user_battleship
    game.place_user_battleship
    @user_selection = gets.chomp.to_s
  end
end
