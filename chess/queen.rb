require_relative "sliding_piece.rb"
require_relative "piece.rb"
require_relative "board.rb"

class Queen < Piece
  include SlidingPiece
  
  def initialize(board, color)
    @symbol = "♛"
  end
  
  def move_dirs
  end
  
end