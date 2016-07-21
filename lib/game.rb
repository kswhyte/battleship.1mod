require './lib/message'
require './lib/game_grid'
require './lib/user'

class Game

  def initialize
    @game_grid = GameGrid.new
  end

  def boot_game
    print Message.welcome_message
    give_prompt
    user_menu
  end

  def give_prompt
    print Message.prompt
    @user_selection = gets.chomp
  end

  def user_menu
    if @user_selection == "p"
      pick_name
    elsif @user_selection == "i"
      print Message.game_rules
      give_prompt
    elsif @user_selection == "q"
      print Message.quit_game
    elsif @user_selection != "p" || @user_selection != "q" || @user_selection != "i"
      print Message.invalid_selection
      give_prompt
    end
  end

  def pick_name
    print Message.pick_name
    user_name = gets.chomp.to_s
    puts "#{user_name.capitalize}, welcome to the mini witty war at sea!!!\n\n"
    consider_coordinates
  end

  def consider_coordinates
    print Message.ponder_coordinates
    display_grid
  end

  def display_grid
    puts @game_grid.arrange_full_grid
    computer_placement_feedback
  end

  def computer_placement_feedback
    puts Message.computer_places_ships
    place_user_destroyer
  end

  def place_user_destroyer
    puts Message.user_place_destroyer
    @user_destroyer_input = gets.chomp
    puts Message.confirm_user_destroyer
    place_user_battleship
  end

  def place_user_battleship
    puts Message.place_user_battleship
    @user_battleship_input = gets.chomp
    puts Message.confirm_user_battleship
  end
end
