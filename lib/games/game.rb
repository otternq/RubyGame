# == game.rb
#

# == Summary
#
# The game
#
class Game

  # Initializes the user's player
  #
  def initialize()

    @player = CharacterHelper.loadPlayer

    welcome()

    @player.putInBag(
      Item.new(0, "Key", "A key to a car")
    )

    @currentLevel = 1

    loadLevel()

  end

  def welcome
    puts "Welcome #{@player.getName()}"
  end

  def start

    puts "Starting level #{@currentLevel}"
    @level.printSummary()

  end

  def loadLevel()

    @level = LevelFactory::getLevel(@currentLevel)

  end

end
