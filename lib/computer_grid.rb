require './lib/computer'

class ComputerGrid
  attr_accessor :computer_cell

  def initialize
    @game_grid = GameGrid.new
    @computer = Computer.new
    @computer_cell = { "A1"=>" ",
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

  def place_destroyer_on_grid(create_destroyer)
    @computer_hash.each do |key, value|
      if create_destroyer[0] == key
        value = "1"
      end
    end
  end
end
