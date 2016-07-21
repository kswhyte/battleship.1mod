require './lib/user'

class UserGrid
  attr_accessor :user_cell

  def initialize
    @game_grid = GameGrid.new
    @user = User.new
    @user_cell = { "A1"=>" ",
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
end
