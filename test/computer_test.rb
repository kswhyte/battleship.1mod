require './test/test_helper'
require './lib/computer'

class ComputerTest < Minitest::Test

  def setup
    @computer = Computer.new
    @first_vertical_key = @computer.randomize_vertical_key
    @first_horizontal_key = @computer.randomize_horizontal_key

    @second_vertical_key = @computer.generate_second_vertical_key(@first_vertical_key)
    @second_horizontal_key = @computer.generate_second_horizontal_key(@first_horizontal_key)

    @third_vertical_key = @computer.generate_third_vertical_key(@second_vertical_key)
    @third_horizontal_key = @computer.generate_third_horizontal_key(@second_horizontal_key)
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

  def test_it_validates_first_coordinate
     @computer.game_grid.cell.keys.include?(@computer.form_first_coordinate(@first_vertical_key, @first_horizontal_key))
  end

  def test_it_validates_second_coordinate
    @computer.game_grid.cell.keys.include?(@computer.form_second_coordinate(@second_vertical_key, @second_horizontal_key))
  end

  def test_it_validates_third_coordinate
    @computer.game_grid.cell.keys.include?(@computer.form_third_coordinate(@third_vertical_key, @third_horizontal_key))
  end

  def test_it_creates_locations_for_a_destroyer
    destroyer = @computer.create_destroyer
      destroyer.map do |pos|
        assert @computer.game_grid.cell.keys.include?(pos)
      end
  end

  def test_it_creates_locations_for_a_battleship
    battleship = @computer.create_battleship
      battleship.map do |pos|
        assert @computer.game_grid.cell.keys.include?(pos)
      end
  end
end
