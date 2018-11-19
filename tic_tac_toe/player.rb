class Player
  attr_reader :mark
  attr_reader :name
  def initialize (name, mark)
    @name = name
    @mark = mark
  end
  def move
    puts "#{@name}, your turn!"
    puts "Row number: "
    row = gets.chomp
    puts "Column number: "
    column = gets.chomp
    [row.to_i, column.to_i]
  end
end