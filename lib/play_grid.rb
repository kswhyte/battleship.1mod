# require './lib/game_grid'

class PlayGrid < GameGrid
attr_accessor :destroyer,
              :battleship,
              :hits_misses

def intitialize
  @game_grid = GameGrid.new
  @hits_misses = miss
  # @destroyer =
  # @battleship =
end




# def fire_missile(coordinate, hit_or_miss)
#
# end
