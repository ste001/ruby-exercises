require_relative 'player'
require_relative 'board'
require_relative 'controller'

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
  board.look
  starter = Controller.coin_toss
  puts "Player #{starter} will start."
  while (not Controller.game_over?(board, players[starter-1].mark))
    puts "Make your move"
    move = players[starter-1].move
    board.insert(move, players[starter-1].mark)
    board.look
    if (board.full?)
      puts "The result is a draw!"
      exit
    end
    (starter-1 == 0) ? starter += 1 : starter -= 1
  end
  puts "The winner is: #{players[starter-1].name}!"
end

game_loop