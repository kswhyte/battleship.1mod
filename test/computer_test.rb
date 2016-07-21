require './test/test_helper'
require './lib/computer'

class ComputerTest < Minitest::Test

  def setup
    @computer = Computer.new
    @first_vertical_key = @computer.randomize_vertical_key
    @first_horizontal_key = @computer.randomize_horizontal_key
    @second_vertical_key = @computer.generate_second_vertical_key(@first_vertical_key)
    @second_horizontal_key = @computer.generate_second_horizontal_key(@first_horizontal_key)
  end

  def test_it_randomly_selects_first_vertical_ship_coordinate
    range = ("A".."D")
    first_vertical_key = @computer.randomize_vertical_key

    assert range.include?(first_vertical_key)
  end

  def test_it_randomly_selects_first_horizontal_ship_coordinate
    range = ("1".."4")
    first_horizontal_key = @computer.randomize_horizontal_key

    assert range.include?(first_horizontal_key)
  end

  def test_it_generates_second_vertical_key

    range = ("A".."D")
    second_vertical_key = @computer.generate_second_vertical_key(@first_vertical_key)

    assert range.include?(second_vertical_key)
  end

  def test_it_generates_second_horizontal_key

    range = ("1".."4")
    second_horizontal_key = @computer.generate_second_horizontal_key(@first_horizontal_key)

    assert range.include?(second_horizontal_key)
  end
  #
  def test_it_generates_third_vertical_key

    range = ("A".."D")
    third_vertical_key = @computer.generate_third_vertical_key(@second_vertical_key)

    assert range.include?(third_vertical_key)
  end

  def test_it_generates_third_horizontal_key

    range = ("1".."4")
    third_horizontal_key = @computer.generate_third_horizontal_key(@second_horizontal_key)
    assert range.include?(third_horizontal_key)
  end

  def test_it_outputs_ships_to_play_grid



  # def test_it_returns_ship_coordinates_for_ship_size_of_two
  #  @computer
  #   computer.randomize_vertical_key
  #   computer.randomize_horizontal_key
  #   computer.generate_second_vertical_key
  #   computer.generate_second_horizontal_key
  #
  #   assert_equal 2, computer.form_second_coordinate
  # end
end

# assert_equal "A1", validator(coordinate_one)
# refute what it is not equal
#you have a coordinate A1.
#i only can return a coordinate within one letter and one number of a spaces
#my letter coordinate has to be B or A
#if its a B, then our number coordinate has to be within
#my number coordinate has to be a 2, and cannot repeat unless it is a B

# if A1, it can be B1 or A2
