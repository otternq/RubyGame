# == run.rb
#

require_relative "games/game"

require_relative "helpers/characterHelper"
require_relative "characters/character"

require_relative "items/item"
require_relative "items/bag"

require_relative "levels/levelFactory"

puts "\n\n"

game = Game.new()

game.start()

puts "\n\n"
