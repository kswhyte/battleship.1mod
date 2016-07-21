require './lib/game_grid'

class Computer
  attr_reader :game_grid

  def initialize
    @game_grid = GameGrid.new
  end

  def randomize_vertical_key
    @game_grid.cell.keys.sample[0]
  end
#first_vertical_key =

  def randomize_horizontal_key
    @game_grid.cell.keys.sample[1]
  end

#(first_vertical_key)
  def generate_second_vertical_key(first_vertical_key)
    # first_vertical_key = randomize_vertical_key
    second_vertical_key = ["A", "B"].sample      if first_vertical_key == "A"
    second_vertical_key = ["A", "B", "C"].sample if first_vertical_key == "B"
    second_vertical_key = ["B", "C", "D"].sample if first_vertical_key == "C"
    second_vertical_key = ["C", "D"].sample      if first_vertical_key == "D"
    second_vertical_key
  end

  def generate_second_horizontal_key(first_horizontal_key)
    # second_vertical_key = generate_second_vertical_key
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
    third_horizontal_key
  end

  def form_first_coordinate(first_vertical_key, first_horizontal_key)
    first_vertical_key + first_horizontal_key
  end

  def form_second_coordinate(second_vertical_key, second_horizontal_key)
    second_vertical_key + second_horizontal_key
  end

  def form_third_coordinate(third_vertical_key, third_horizontal_key)
    third_vertical_key + third_horizontal_key
  end

  def create_destroyer
    first_vertical_key = randomize_vertical_key
    first_horizontal_key = randomize_horizontal_key
    first_coordinate = form_first_coordinate(first_vertical_key, first_horizontal_key)

    second_vertical_key = generate_second_vertical_key(first_vertical_key)
    second_horizontal_key = generate_second_horizontal_key(first_horizontal_key)
    second_coordinate = form_second_coordinate(second_vertical_key, second_horizontal_key)
    [first_coordinate, second_coordinate]
  end

  def create_battleship
    first_vertical_key = randomize_vertical_key
    first_horizontal_key = randomize_horizontal_key
    first_coordinate = form_first_coordinate(first_vertical_key, first_horizontal_key)

    second_vertical_key = generate_second_vertical_key(first_vertical_key)
    second_horizontal_key = generate_second_horizontal_key(first_horizontal_key)
    second_coordinate = form_second_coordinate(second_vertical_key, second_horizontal_key)

    third_vertical_key = generate_third_vertical_key(first_vertical_key)
    third_horizontal_key = generate_third_horizontal_key(first_horizontal_key)
    third_coordinate = form_third_coordinate(third_vertical_key, third_horizontal_key)
    [first_coordinate, third_coordinate, third_coordinate]
  end
end
