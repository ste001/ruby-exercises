module Controller
  def self.coin_toss
    rand(1..2)
  end
  def self.game_over? (board, mark)
    if (board.full?)
      return false
    end
    i = 0
    j = 0
    count = 0
    while (i < rows)
      while (j < rows)
        if board[i][j] == mark
          count += 1
        end
      end
    end
  end
end
        

