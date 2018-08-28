require_relative "sliding_piece.rb"
require_relative "piece.rb"
require_relative "board.rb"


class King < Piece 
  def initialize(board, color)
    @symbol = "♚"
  end
end 