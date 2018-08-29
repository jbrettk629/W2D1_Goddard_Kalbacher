require 'colorize'
require_relative 'cursor.rb'
require_relative 'piece.rb'
require_relative 'board.rb'

class Display 
  
  attr_reader :board, :cursor  
  
  def initialize(board)
    @board = board
    @cursor = Cursor.new([0,0], board)
  end 
  
  def render 
    puts "LOOK AT THIS CURSOR AT #{@cursor.cursor_pos.inspect}"
    puts "  1 2 3 4 5 6 7 8"
    which_row = 0
    board.grid.each do |row|
      disp_row = "#{which_row}"
        row.each do |piece| 
        disp_row << cursor_there?(piece)
      end
      puts disp_row
      which_row += 1
    end 
    
  end 
  
  def cursor_there?(piece)
    if piece.position == cursor.cursor_pos
      return " #{piece.symbol}".colorize(:white ).colorize( :background => :red)
    else 
      return " #{piece.symbol}"
    end
  end
  
  
end 




if __FILE__ == $PROGRAM_NAME
  board = Board.new
  display = Display.new(board)

  #while true 
    display.render 
    display.cursor.get_input
    system("clear")
  #end
  
  
end