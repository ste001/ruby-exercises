$colors = ["red", "blue", "yellow", "green", "purple", "orange"]

require_relative 'player'
require_relative 'computer'
require_relative 'compare'

def play_as_codebreaker
  c = Computer.new
  p = Player.new "Player"
  answer = c.combination
  tries = 12
  game_over = false
  while (tries > 0 && !game_over)
    puts "\nTurn #{13-tries}"
    guess = p.guess
    feedback = Compare.feedback(guess, answer)
    puts feedback.join(" ")
    if feedback.join(" ") == "O O O O"
      game_over = true
    end
    tries -= 1
  end
  puts tries == 0 ? "You lost the game!" : "You won the game in #{12 - tries} turns"
end

def play_as_codemaker
  c = Computer.new
  p = Player.new "Player"
  answer = p.code_make
  tries = 12
  game_over = false
  while (tries > 0 && !game_over)
    puts "\nTurn #{13-tries}"
    guess = c.guess
    puts guess
    feedback = Compare.feedback(guess, answer)
    puts feedback.join(" ")
    if feedback.join(" ") == "O O O O"
      game_over = true
    end
    tries -= 1
    puts "Press enter to simulate the next turn."
    gets.chomp
  end
  puts tries == 0 ? "You won the game!" : "You lost the game in #{12 - tries} turns"
end

puts "-----> M A S T E R M I N D <-----"
puts "Do you want to play as the codemaker or as the codebreaker?"
puts "Type codemaker for the former, codebreaker for the latter."
play_as = gets.chomp
(play_as == "codemaker") ? play_as_codemaker : play_as_codebreaker


