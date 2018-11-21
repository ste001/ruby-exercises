class Computer
  attr_reader :combination
  def initialize
    @combination = []
    randomize_combination
  end

  def guess
    @combination = []
    randomize_combination
    @combination
  end

  private
  def randomize_combination
    4.times do
      peg = rand(0..5)
      @combination.push($colors[peg])
    end
  end
end