class Player
  def initialize name
    @name = name
  end
  def guess
    combination = []
    puts "Type your guess (one color per line)"
    4.times do
      color = gets.chomp
      combination.push(color)
    end
    combination
  end
end