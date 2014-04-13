# == run.rb
#

require_relative "games/game"

require_relative "helpers/characterHelper"
require_relative "characters/character"

require_relative "items/item"
require_relative "items/bag"

require_relative "levels/levelFactory"

game = Game.new()

game.start()
