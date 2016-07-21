require './test/test_helper'
require './lib/user'

class UserTest < Minitest::Test

  def test_it_retrieves_user_destroyer
    user = User.new
    game = Game.new
    game_grid = GameGrid.new

    destroyer = user.retrieve_user_destroyer

    destroyer.map do |pos|
      assert @user.game_grid.cell.keys.include?(pos)
    end
  end
end
