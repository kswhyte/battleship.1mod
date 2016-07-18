class GameGrid

  # def initialize
  # end

  def header_footer
    ["-------------"]
  end

  def create_row(label)
    ["|", label, " ", " ", " ", " ", "|"]
  end

  def generate_grid
    [header_footer,
    ["|", " ", "1", "2", "3", "4", "|"],
    create_row("A"),
    create_row("B"),
    create_row("C"),
    create_row("D"),
    header_footer]
  end

  def arrange_full_grid
    generate_grid.each do |row|
      row.each do |item|
        print item + ' '
      end
      puts ''
    end
    puts "\n\n"
  end
end




#     @cell = { "A1"=>" ",
#               "A2"=>" ",
#               "A3"=>" ",
#               "A4"=>" ",
#
#               "B1"=>" ",
#               "B2"=>" ",
#               "B3"=>" ",
#               "B4"=>" ",
#
#               "C1"=>" ",
#               "C2"=>" ",
#               "C3"=>" ",
#               "C4"=>" ",
#
#               "D1"=>" ",
#               "D2"=>" ",
#               "D3"=>" ",
#               "D4"=>" " }
#   end
#
#   def game_board
#     @cell.keys
#   end
#
#   def create_rows_columns
#     game_board.map do |coordinate|
#       @column_rows = coordinate.chars
#     end
#   end
#
#   def create_columns
#     @columns = create_rows_columns.map do |rc|
#       # require "pry"; binding.pry
#       rc[1]
#     end.uniq
#   end
#
#   def create_rows
#     @rows = @cell.map do |key, value|
#       [key[0], value]
#     end
#   end
# end


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
