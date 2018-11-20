$colors = ["red", "blue", "yellow", "green", "purple", "orange"]

require_relative 'player'
require_relative 'computer'
require_relative 'compare'

c = Computer.new
p = Player.new "Player"
answer = c.combination
puts answer
while (true)
  guess = p.guess
  feedback = Compare.feedback(guess, answer)
  puts feedback.join(" ")
end



