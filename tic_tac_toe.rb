
class TicTacToe
  attr_accessor :board, :player_x, :player_o

  def initialize
    @board = Board.new
    @player_x = "X"
    @player_o = "O"
  end

  def take_turn(player)
    puts "It is now player #{player}'s turn:"
    puts "Please selcet row (1,2 or 3):"
    row = gets.chomp.to_i - 1
    puts "Please selesct a column (1,2 or 3)"
    column = gets.chomp.to_i - 1
    place_mark(player, row, column)
    @board.print
  end

  def place_mark(player, row, column)
    if @board.spaces[row][column] == "-" 
      @board.spaces[row][column] = player
      if @board.winner?
        display_winner(player)
      else
      end  

    else
      puts "Space already taken, please select again"
      take_turn(player)
    end
  end

  def display_winner(player)
    puts "Player #{player} is the winner!"
  end

end

class Board
    attr_accessor :spaces

    def initialize
      @spaces = [["-","-","-"],["-","-","-"],["-","-","-"]]
    end

    def print
      p @spaces[0]
      p @spaces[1]
      p @spaces[2]
    end

    def winner?
      r = 0
      c = 0
      #CHECK FOR HORIZONTAL WIN
      while r < 3
        if @spaces[r][c] == @spaces[r][c+1] && @spaces[r][c+1] == @spaces[r][c+2] && @spaces[r][c] != "-"
          return true
        end
        r += 1
      end
      #CHECK FOR VERTICAL WIN
      r = 0
      while c < 3
        if @spaces[r][c] == @spaces[r+1][c] && @spaces[r+1][c] == @spaces[r+2][c] && @spaces[r][c] != "-"
          return true
        end
        c += 1
      end
      #CHECK FOR DIAGONAL WIN
      c = 0
      if @spaces[r][c] == @spaces[r+1][c+1] && @spaces[r+1][c+1] == @spaces[r+2][c+2] && @spaces[r][c] != "-"
        return true
      end
      if @spaces[r][c+2] == @spaces[r+1][c+1] && @spaces[r+1][c+1] == @spaces[r+2][c] && @spaces[r][c+2] != "-"
        return true
      end
      return false
    end
end

# SOME SIMPLE DRIVER CODE
game = TicTacToe.new

until game.board.winner?
  game.take_turn(game.player_x)
  game.take_turn(game.player_o)
end

