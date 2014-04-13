# == levelFactory.rb
#

require_relative "./level"
require_relative "./level1"

module LevelFactory

  # Load a specific level
  #
  # Returns a Level Object based on the level
  # integer parameter
  #
  def self.getLevel(level)
    case level
      when 1
        return Level1.new()
    end
  end

end
