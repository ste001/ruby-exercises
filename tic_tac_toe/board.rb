class Board
  attr_reader :rows
  attr_reader :columns
  attr_reader :board
  def initialize (rows, columns)
    @rows = rows
    @columns = columns
    @board = Array.new(rows) {Array.new(columns)}
    create
  end
  def look
    i = 0
    j = 0
    while (i < @rows)
      while (j < @columns)
        print "#{@board[i][j]}|"
        $stdout.flush
        j += 1
      end
      puts ""
      i += 1
      j = 0
    end
  end
  def create
    i = 0
    j = 0
    while (i < @rows)
      while (j < @columns)
        @board[i][j] = " "
        j += 1
      end
      i += 1
      j = 0
    end
  end
  def moveValid? move
    if (move[0] >= 0 && move[0] < @rows && move[1] >= 0 && move[1] < @columns \
        && @board[move[0]][move[1]] == " ")
      return true
    end
    false
  end
  def full?
    i = 0
    j = 0
    while (i < @rows)
      while (j < @columns)
        if @board[i][j] == " "
          return false
        end
        j += 1
      end
      i += 1
      j = 0
    end
    true
  end
  def insert (move, mark)
    if (moveValid? move)
      @board[move[0]][move[1]] = mark
    else
      puts "Move not valid, you skip a turn!"
    end
  end
end