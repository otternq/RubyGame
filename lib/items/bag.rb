class Bag

  def initialize()
    @items = Array.new
  end

  def addItem(item)

    raise ArgumentError, 'Argument is not an Item' unless item.kind_of?(Item)

    @items << item

  end

  def getItemByKey(index)

    raise ArgumentError, 'Argument is not an Integer' unless index.kind_of?(Integer)
    raise ArgumentError, 'Value of `index` not valid' unless @items[index].nil?

    return @items[index]

  end

  # == Summary
  #
  # Returns the index number of the item
  # or false if it couldn't find the item
  #
  def getIndexById?(needle)

    raise ArgumentError, 'Argument is not an Item' unless needle.kind_of?(Item)

    #searching for the needle in the haystack (items)
    @items.each_with_index do |hay, index|
      return index if hay.getId() == needle.getId()
    end

    # made it through the haystack and didn't
    # find the item
    return false

  end

end
