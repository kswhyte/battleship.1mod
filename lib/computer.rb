require './lib/game'
require './lib/message'
require './lib/game_grid'
require 'pry'

class Computer
  attr_reader

  def initialize
    @game_grid = GameGrid.new
  end

  def randomize_vertical_key
    first_vertical_key = @game_grid.cell.keys.sample[0]
  end

  def randomize_horizontal_key
    first_horizontal_key = @game_grid.cell.keys.sample[1]
  end

  def generate_second_vertical_key(first_vertical_key)
    second_vertical_key = ["A", "B"].sample      if first_vertical_key == "A"
    second_vertical_key = ["A", "B", "C"].sample if first_vertical_key == "B"
    second_vertical_key = ["B", "C", "D"].sample if first_vertical_key == "C"
    second_vertical_key = ["C", "D"].sample      if first_vertical_key == "D"
    return second_vertical_key
  end

  def generate_second_horizontal_key(first_horizontal_key)
    second_horizontal_key = ["1", "2"].sample      if first_horizontal_key == "1"
    second_horizontal_key = ["1", "2", "3"].sample if first_horizontal_key == "2"
    second_horizontal_key = ["2", "3", "4"].sample if first_horizontal_key == "3"
    second_horizontal_key = ["3", "4"].sample      if first_horizontal_key == "4"
    return second_horizontal_key
  end

  def generate_third_vertical_key(second_vertical_key)
    third_vertical_key = ["A", "B"].sample      if second_vertical_key == "A"
    third_vertical_key = ["A", "B", "C"].sample if second_vertical_key == "B"
    third_vertical_key = ["B", "C", "D"].sample if second_vertical_key == "C"
    third_vertical_key = ["C", "D"].sample      if second_vertical_key == "D"
    # require "pry"; binding.pry
    return third_vertical_key
  end

  def generate_third_horizontal_key(second_horizontal_key)
    third_horizontal_key = ["1", "2"].sample      if second_horizontal_key == "1"
    third_horizontal_key = ["1", "2", "3"].sample if second_horizontal_key == "2"
    third_horizontal_key = ["2", "3", "4"].sample if second_horizontal_key == "3"
    third_horizontal_key = ["3", "4"].sample      if second_horizontal_key == "4"
    return third_horizontal_key
  end

  def form_first_coordinate
    first_vertical_key + first_horizontal_key
  end

  def form_second_coordinate
    second_vertical_key + second_horizontal_key
  end

  def form_third_coordinate
    third_vertical_key + third_horizontal_key
  end

  def generate_ships
    #could return array of positions for 2 ships
    #or [x, x,x,x,x]
  end


  # def place_destroyer
  #   destroyer_ship = []
  #   destroyer_ship << form_first_coordinate
  #   destroyer_ship << form_second_coordinate
  # end
end

  # def place_first_computer_ship
  #   game_grid = place_destroyer
  #   game_grid.cell[ship] = 1
  #
  # def place_battleship
  #   place_ships_randomly(3)
  # end
  #
  # def retrieve_second_coordinate
  #   require "pry"; binding.pry
  #   if place_ships_randomly(ship_size).chars.all? do |xy|
  #
  #
  #     xy == "A"
  #     second_coordinate = ["A"]
  #     end
  #   end
  # end

  #
  #   place_second_computer_ship
  # end
# end
  #
  # def place_second_computer_ship
  #   place_battleship.each do |ship|
  #     cell[ship] = 1
  #   end
  #   computer_places_ships
  # end



  # def calculate_second_coordinate
  #   if retrieve_first_coordinate ==
