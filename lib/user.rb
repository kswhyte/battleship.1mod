require './lib/game_grid'

class User

  def initialize
    @game = Game.new
  end





  def user_place_destroyer
    puts Message.place_destroyer
    @user_selection = gets.chomp.to_s
    @game.verify_first_ship
  end

  def user_place_battleship
    puts Message.place_destroyer
    @user_selection = gets.chomp.to_s
    @game.verify_second_ship
  end



  # def place_destroyer_ship
  #
  # end
  #
  # def place_battleship
  #
  # end


end
