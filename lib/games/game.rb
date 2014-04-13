# == game.rb
#

require_relative "characters/character"
require_relative "items/item"
require_relative "items/bag"

# == Summary
#
# The game
#
class Game

  # Initializes the user's player
  #
  def initialize()

    @player = Character.new("Nick Otter", Character::MALE)

    @player.putInBag(
      Item.new(0, "Key", "A key to a car")
    )

    @currentLevel = 1

  end

  def welcome
    puts "Welcome %s", @player.getName()
  end

  def start

    puts "Starting level %s", @currentLevel

  end

end
