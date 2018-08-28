require "singleton"
require_relative "board.rb"

class Piece
  
  attr_accessor :position, :symbol
  
  def initialize(board, color)
    @board = board
    @position = nil
    @color = color #"symbol" :black or :white
  end
  
  
  def inspect 
    @color
  end
end

module SteppingPiece
end

class NullPiece < Piece
  
  include Singleton
  
  def initialize
    @name = nil 
  end
  
  def inspect
    "-"
  end
end

