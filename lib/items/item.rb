# == item.rb
#

# == Summary
#
# An object to be used within the game
#
class Item

  def initialize(id, title, description)

    setId(id)
    setTitle(title)
    setDescription(description)

  end

  def getId
    @id
  end

  def setId(id)

    raise ArgumentError, 'Argument is not an Integer' unless id.is_a? Integer

    @id = id

  end

  def getTitle
    @title
  end

  def setTitle(title)

    raise(
      ArgumentError,
      'Argument is not a Strisfng'
    ) unless title.is_a?(String)

    @title = title

  end

  def setDescription(description)

    raise(
      ArgumentError,
      'Argument is not a Strisfng'
    ) unless description.is_a?(String)

    @description = description

  end

  def getDescription
    @description
  end


end
