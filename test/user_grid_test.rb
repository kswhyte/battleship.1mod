require './test/test_helper'
require './lib/user_grid'

class UserGridTest < Minitest::Test
  def test_it_validates_user_coordinate_values
    user_grid = UserGrid.new
    assert user_grid.user_cell.values.include?(" ")
  end
end
