require './test/test_helper'
require './lib/computer_grid'

class ComputerGridTest < Minitest::Test
  def test_it_validates_computer_coordinate_values
    computer_grid = ComputerGrid.new
    assert computer_grid.computer_cell.values.include?(" ")
  end
end
