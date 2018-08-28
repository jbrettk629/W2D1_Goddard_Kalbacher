require "singleton"

class Piece
  attr_accessor :position
  def initialize(name)
    @name = name
    @position = nil
  end

  
  def inspect 
    "#{@name[0].upcase}"
  end
end

class NullPiece < Piece
  include Singleton
  def initialize
    @name = nil 
  end
  def inspect
    " "
  end
end