require './lib/message'
require './lib/game_grid'
require './lib/computer'
require './lib/user'
# require './lib/play_grid'

class Game

  def initialize
    @game_grid = GameGrid.new
    @computer = Computer.new(@game_grid)
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
    puts "#{user_name.capitalize}, welcome to the mini witty war at sea!!!"
    consider_coordinates
  end

  def consider_coordinates
    print Message.ponder_coordinates
    display_grid
  end

  def display_grid
    puts @game_grid.arrange_full_grid
  end


  # @computer.place_destroyer

  #
  #   computer.place_first_computer_ship
  # end

  # def computer_placement_feedback
  #   puts Message.computer_places_ships
  #   verify_first_ship
  # end


end

  def verify_first_ship
    puts Message.confirm_destroyer
    @user.user_place_battleship
  end

  def verify_second_ship
    puts Message.confirm_battleship
    xyz
  end




    # [5] pry(#<Game>)> @user_selection.split(" ")
    # => ["A1", "A2"]
    # [6] pry(#<Game>)> cell["A1", "A2"]
    # ArgumentError: wrong number of arguments (given 2, expected 1)
    # from (pry):6:in `[]'
    # [7] pry(#<Game>)> cell["A1"]
    # => " "
    # [8] pry(#<Game>)> cell["A1"] = 1
    # => 1
    # [9] pry(#<Game>)> cell["A1"]
    # => 1


  #
  # def place_ships
  #   print Message.place_battleship
  #   ships_placed = gets.chomp
  #
  # end



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
