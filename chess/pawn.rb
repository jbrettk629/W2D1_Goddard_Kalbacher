require_relative "piece.rb"
require_relative "board.rb"

class Pawn < Piece 
  def initialize(board, color)
    @symbol = "♟"
  end
end 