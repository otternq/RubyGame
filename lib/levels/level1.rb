# == Level1.rb
#

class Level1 < Level

  def initialize()

    @title = "South Boise"
    @description = "A fucking cold ass desert"

    @items = [
      Item.new(0, "Printer Paper", "A stack of paper")
    ];

  end

end
