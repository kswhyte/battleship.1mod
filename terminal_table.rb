require 'terminal-table'

table = Terminal::Table.new do |t|
  t << ['One', 1]
  t << :separator
  t.add_row ["Two\nDouble", 2]
  t.add_separator
  t.add_row ['Three', 3]
end

puts table
