require_relative "characters/character"
require_relative "items/item"
require_relative "items/bag"

character = Character.new("Nick Otter", Character::MALE)
item1 = Item.new(0, "Key", "A key to a car")

character.putInBag(item1)
puts character.getFromBag(item1.getId())
puts character.getName()
