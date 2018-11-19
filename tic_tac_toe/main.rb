require_relative 'player'
require_relative 'board'

def startup
  puts "Welcome to Tic Tac Toe!"
  puts "Player 1, enter your name and your mark!"
  name1 = gets.chomp
  mark1 = gets.chomp
  puts "Player 2, enter your name and your mark!"
  name2 = gets.chomp
  mark2 = gets.chomp
  player1 = Player.new(name1, mark1)
  player2 = Player.new(name2, mark2)
  [player1, player2]
end

def game_loop
  players = startup
  board = Board.new(3,3)
  puts players[0].name
  puts players[1].name
  board.look
end

game_loop