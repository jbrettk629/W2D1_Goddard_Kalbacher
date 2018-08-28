require_relative "sliding_piece.rb"
require_relative "piece.rb"
require_relative "board.rb"
require "byebug"

class Bishop < Piece

  include SlidingPiece 

  attr_reader :position

  def initialize(board, color)
    @symbol = "♝"
  end

  
protected 
  def move_dirs
    self.diagonal_dirs
  end
  
end 