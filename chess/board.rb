require_relative "piece.rb"
require_relative "queen.rb"
require_relative "bishop.rb"
require_relative "rook.rb"
require_relative "knight.rb"
require_relative "king.rb"
require_relative "pawn.rb"

class Board
  attr_reader :grid
  def initialize
    @grid = Array.new(8) {Array.new(8)}
    populate
    set_starting_pos
  end
  
  def populate
    @grid[0] = [Rook.new(self, :black), Knight.new(self, :black), Bishop.new(self, :black), 
               King.new(self, :black), Queen.new(self, :black), Bishop.new(self, :black),
               Knight.new(self, :black), Rook.new(self, :black)]
    @grid[1].map! {|space| space = Pawn.new(self, :black)}
  
    (2..5).each do |row|
      @grid[row].map! {|space| space = NullPiece.instance}
    end
  
    @grid[6].map! {|space| Pawn.new(self, :white)}
    @grid[7] = [Rook.new(self, :white), Knight.new(self, :white), Bishop.new(self, :white), 
                Queen.new(self, :white),  King.new(self, :white), Bishop.new(self, :white),
                Knight.new(self, :white), Rook.new(self, :white)]
  end
  
  def set_starting_pos
    (0..7).each do |row|
      (0..7). each do |col|
        @grid[row][col].position = [row, col] unless @grid[row][col].nil?
      end 
    end
  end 
  
  def move_piece(start_pos, end_pos)
    raise "There is no piece here." if self[start_pos].is_a?(NullPiece)
    #raise "You can not move this piece there" unless self[start_pos].vali
    self[end_pos] = self[start_pos]
    self[start_pos] = NullPiece.instance
    @grid
  end
  
  def []=(pos, value) #pos is an array
    row, col = pos
    @grid[row][col] = value
  end
  
  def [](pos)
     row, col = pos
     @grid[row][col] 
  end
  
  def valid_pos?(pos)
    return false if pos.any? {|el| el > 7 || el < 0}
    true
  end 
  
end