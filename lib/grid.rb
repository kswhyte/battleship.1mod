require 'terminal-table'

class Grid
end

row = []
row << ""
row <<
row <<

rows = []
rows << ['One', 1]
rows << ['Two', 2]
rows << ['Three', 3]
table = Terminal::Table.new :rows => rows

# > puts table
#
# +-------+---+
# | One   | 1 |
# | Two   | 2 |
# | Three | 3 |
# +-------+---+

table = Terminal::Table.new do |t|
  t << ['One', 1]
  t << :separator
  t.add_row ['Two', 2]
  t.add_separator
  t.add_row ['Three', 3]
end

# > puts table
#
# +-------+---+
# | One   | 1 |
# +-------+---+
# | Two   | 2 |
# +-------+---+
# | Three | 3 |
# +-------+---+
