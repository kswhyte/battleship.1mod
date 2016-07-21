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
