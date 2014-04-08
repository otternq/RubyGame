# == character.rb
#

# == Summary
#
# Stores information about a character in the game
#
class Character

  #Used to define the character gender
  MALE = 0
  FEMALE = 1

  def initialize(name, gender)

    setName(name)
    setGender(gender)

    @bag = Bag.new

  end

  def getName
    @name
  end

  def setName(name)

    raise ArgumentError, 'Argument is not a String' unless name.is_a?(String)
    @name = name

  end

  def getGender
    @gender
  end

  def setGender(gender)

    # make sure that the gender is a valid value based on
    # the MALE and FEMALE constants
    unless gender == Character::MALE || gender == Character::FEMALE
      raise(
        ArgumentError,
        'Argument is not valid, use Character::MALE or Character::FEMALE'
      )
    end

    @gender = gender
  end

  # adds an item to characters bag
  def putInBag(item)

    begin

      @bag.addItem(item)
      printf "Added %s to %s's bag", item.getTitle(), @name

      return true

    rescue ArgumentError

      printf "Cannot add item to %s's bag", @name
      return false

    end

  end

  def getFromBag(id)

    index = @bag.getIndexById(id)

    if item != false

      begin
        return @bag.getItemByKey(index)
      rescue
        puts "An internal error has occured"
        return false
      end

    else
      #Item not found
      return false
    end

  end

end
