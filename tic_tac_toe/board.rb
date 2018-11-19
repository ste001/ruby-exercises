class Board
  def initialize (rows, columns)
    @rows = rows
    @columns = columns
    @board = Array.new(rows) {Array.new(columns)}
  end
  def look
    i = 0
    j = 0
    while (i < @rows)
      while (j < @columns)
        print "|#{@board[i][j]}"
        $stdout.flush
        j = j + 1
      end
      puts ""
      i = i + 1
      j = 0
    end
  end
  def moveValid? move
    if (move[0] >= 0 && move[0] < @rows && move[1] >= 0 && move[1] < @columns \
        && @board[move[0]][move[1]] == "")
      return true
    end
    false
  end
end

b = Board.new(3, 3)
b.look