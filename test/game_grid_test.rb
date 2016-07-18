gem 'minitest', '~> 5.0'
require 'minitest/autorun'
require 'minitest/pride'
require 'colorize'
require 'colorized_string'
require './lib/game_grid'

class GameGridTest < Minitest::Test

  def test_it_has_a_header_footer
    game_grid = GameGrid.new

    assert_equal ["-------------"], game_grid.header_footer
  end

  def test_it_has_creates_a_row_skeleton
    game_grid = GameGrid.new

    assert_equal ["|", "A", " ", " ", " ", " ", "|"], game_grid.create_row("A")
    assert_equal ["|", "C", " ", " ", " ", " ", "|"], game_grid.create_row("C")
  end

  def test_it_has_a_full_grid_layout
    game_grid = GameGrid.new

    assert_equal [["-------------"],
                ["|", " ", "1", "2", "3", "4",  "|"],
                ["|", "A", " ", " ", " ", " ", "|"],
                ["|", "B", " ", " ", " ", " ", "|"],
                ["|", "C", " ", " ", " ", " ", "|"],
                ["|", "D", " ", " ", " ", " ", "|"],
                ["-------------"]], game_grid.generate_grid
  end
end


#   def test_it_splits_cell_into_keys
#     game_grid = GameGrid.new
#
#     assert_equal ["A1",
#                   "A2",
#                   "A3",
#                   "A4",
#                   "B1",
#                   "B2",
#                   "B3",
#                   "B4",
#                   "C1",
#                   "C2",
#                   "C3",
#                   "C4",
#                   "D1",
#                   "D2",
#                   "D3",
#                   "D4"], game_grid.game_board
#   end
#
#   def test_it_creates_rows_columns
#     game_grid = GameGrid.new
#
#     assert_equal [["A", "1"],
#                  ["A", "2"],
#                  ["A", "3"],
#                  ["A", "4"],
#                  ["B", "1"],
#                  ["B", "2"],
#                  ["B", "3"],
#                  ["B", "4"],
#                  ["C", "1"],
#                  ["C", "2"],
#                  ["C", "3"],
#                  ["C", "4"],
#                  ["D", "1"],
#                  ["D", "2"],
#                  ["D", "3"],
#                  ["D", "4"]], game_grid.create_rows_columns
#   end
#
#   def test_it_creates_columns
#     game_grid = GameGrid.new
#
#     assert_equal ["1", "2", "3", "4"], game_grid.create_columns
#   end
#
#   def test_it_creates_rows
#     game_grid = GameGrid.new
#
#     assert_equal ["A", "B", "C", "D"], game_grid.create_rows
#   end
#
# end
