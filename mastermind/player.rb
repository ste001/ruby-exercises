class Player
  def initialize name
    @name = name
  end
  def guess
    puts "Type your guess (one color per line)"
    combination = insert_code
  end
  def code_make
    puts "Type your code (one color per line)"
    combination = insert_code
  end
  
  private
  def insert_code
    combination = []
    4.times do
      color = gets.chomp
      color = color.downcase
      combination.push(color)
    end
    combination
  end

end