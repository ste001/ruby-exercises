class Player
  attr_reader :mark
  attr_reader :name
  def initialize (name, mark)
    @name = name
    @mark = mark
    @score = 0
  end
  def move
    puts "#{@name}, your turn!"
    puts "Row number: "
    row = gets.chomp
    puts "Column number: "
    column = gets.chomp
    [row, column]
  end
end