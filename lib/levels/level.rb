class Level

  def initialize()
    @title = ""
    @description = ""
    @items = Array.new
  end

  def printItems

    @items.each do |item|
      puts "\t#{item.getTitle()} #{item.getDescription()}"
    end

  end

  def printSummary

    puts "\n#{@title}\n"
    puts "===========\n"

    puts "\t#{@description}\n"

    puts "\n\tContains"
    printItems()

  end

end
