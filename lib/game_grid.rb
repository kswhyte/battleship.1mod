class GameGrid

  attr_reader :cell

  def initialize
    @cell = { "A1"=>" ",
             "A2"=>" ",
             "A3"=>" ",
             "A4"=>" ",

             "B1"=>" ",
             "B2"=>" ",
             "B3"=>" ",
             "B4"=>" ",

             "C1"=>" ",
             "C2"=>" ",
             "C3"=>" ",
             "C4"=>" ",

             "D1"=>" ",
             "D2"=>" ",
             "D3"=>" ",
             "D4"=>" " }
  end

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
