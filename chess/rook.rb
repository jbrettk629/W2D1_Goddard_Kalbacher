require_relative "sliding_piece.rb"
require_relative "piece.rb"
require_relative "board.rb"
class Rook < Piece
  include SlidingPiece
  
  def initialize(board, color)
    @symbol = "♜"
  end
  
  def moves
    @moves = self.horizontal_dirs(@position)
  end
  
end 