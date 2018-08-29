require_relative "sliding_piece.rb"
require_relative "piece.rb"
require_relative "board.rb"

class Queen < Piece
  include SlidingPiece
  
  def initialize(board, color)
    @symbol = "♛"
  end
  
  def moves 
    @moves = self.horizontal_dirs(@position) + self.diagonal_dirs(@position)
  end 
end