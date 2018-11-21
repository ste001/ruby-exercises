$colors = ["red", "blue", "yellow", "green", "purple", "orange"]

require_relative 'player'
require_relative 'computer'
require_relative 'compare'

c = Computer.new
p = Player.new "Player"
answer = c.combination
puts answer
tries = 12
game_over = false
while (tries > 0 && !game_over)
  puts "Turn #{13-tries}"
  guess = p.guess
  feedback = Compare.feedback(guess, answer)
  puts feedback.join(" ")
  if feedback.join(" ") == "O O O O"
    game_over = true
  end
  tries -= 1
end
puts tries == 0 ? "You lost the game!" : "You won the game in #{12 - tries} turns"



