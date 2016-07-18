require './lib/message'

class Game
  def boot_game
    print Message.welcome_message
    @user_selection = gets.chomp
    game_start
  end

  def game_start
    if @user_selection == "p"
      pick_name
    elsif @user_selection == "i"
      print Message.game_rules
      boot_game
    elsif @user_selection == "q"
      print Message.quit_game
      # require "pry"; binding.pry
    elsif @user_selection != "p" || "q" || "i"
      print Message.invalid_selection
      boot_game
    end
  end

  def pick_name
    print Message.pick_name
    user_name = gets.chomp.to_s
    puts "#{user_name.capitalize}, welcome to the mini witty war at sea!!!"
    # display_grid
  end

  def display_grid
    game_grid = GameGrid.new
    game_grid.
    # set_coordinates
  end

  def set_coordinates
    print Message.pick_coordinates
    # display_grid
  end


  # def place_ships
  #   print Message.place_ships
  #   ships_placed = gets.chomp
  #
  # end
end



# include Gameplay

# attr_accessor :human,
#               :computer
#
# def initialize
#   @human = Player.new
#   @computer = ComputerPlayer.new
# end
# def welcome_message(human_user, computer_user)


  # computer_user.place_ship_randomly(3)
  # computer_user.place_ship_randomly(2)
  # PlayerInterface.main_menu(human_user)
  # main_game
