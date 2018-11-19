module Controller
  def self.coin_toss
    rand(1..2)
  end
  def self.rows? (board, mark)
    i = 0
    j = 0
    count = 0
    while (i < board.rows)
      while (j < board.columns)
        if (board.board[i][j] == mark)
          count += 1
          if count == 3
            return true
          end
        else
          count = 0
        end
        j += 1
      end
      i += 1
      j = 0
      count = 0
    end
    false
  end
  def self.columns? (board, mark)
    i = 0
    j = 0
    count = 0
    while (i < board.columns)
      while (j < board.rows)
        if (board.board[j][i] == mark)
          count += 1
          if count == 3
            return true
          end
        else
          count = 0
        end
        j += 1
      end
      i += 1
      j = 0
      count = 0
    end
    false
  end
  def self.diagonal_left_to_right? (board, mark)
    i = 0
    j = 0
    count = 0
    while (i < board.columns || j < board.columns)
      if (board.board[i][j] == mark)
        count += 1
        if count == 3
          return true
        end
      else
        count = 0
      end
      i += 1
      j += 1
    end
    false
  end
  def self.diagonal_right_to_left? (board, mark)
    i = 0
    j = 0
    count = 0
    while (i > 0 || j < board.columns)
      if (board.board[j][i] == mark)
        count += 1
        if count == 3
          return true
        end
      else
        count = 0
      end
      i -= 1
      j += 1
    end
    false
  end
  def self.game_over? (board, mark)
    if (self.columns?(board, mark) || self.rows?(board, mark) \
        || self.diagonal_left_to_right?(board, mark) \
        || self.diagonal_right_to_left?(board, mark))
        return true
    end
    false
  end
end