class Level

  def initialize()
    @items = Array.new
  end

  def printItems

    @items.each do |item|
      puts "#{item.getTitle()} #{item.getDescription()}"
    end

  end

end
