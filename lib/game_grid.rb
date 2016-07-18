class GameGrid

  def initialize

    cell_values  = { "A1"=>"empty",
                    "A2"=>"empty",
                    "A3"=>"empty",
                    "A4"=>"empty",

                    "B1"=>"empty",
                    "B2"=>"empty",
                    "B3"=>"empty",
                    "B4"=>"empty",

                    "C1"=>"empty",
                    "C2"=>"empty",
                    "C3"=>"empty",
                    "C4"=>"empty",

                    "D1"=>"empty",
                    "D2"=>"empty",
                    "D3"=>"empty",
                    "D4"=>"empty" }

    game_board = [["A1", "A2", "A3", "A4", ]]
  end


end





end


# require 'terminal-table'
#
# class Grid
#   rows = []
#   rows << ['A1', 1]
#   rows << ['A2', 2]
#   rows << ['A3', 3]
#   rows << ['A4', 4]
#   rows << ['B1', 1]
#   rows << ['B2', 2]
#   rows << ['B3', 3]
#   rows << ['B4', 4]
#   rows << ['C1', 1]
#   rows << ['C2', 2]
#   rows << ['C3', 3]
#   rows << ['C4', 4]
#   rows << ['D1', 1]
#   rows << ['D2', 2]
#   rows << ['D3', 3]
#   rows << ['D4', 4]
# end
#
#   table = Terminal::Table.new :rows => rows
#   table = Terminal::Table.new :title => "BATTLESHIP", :headings => ['Y', 'X'], :rows => rows
#   table.align_column(1, :right)
