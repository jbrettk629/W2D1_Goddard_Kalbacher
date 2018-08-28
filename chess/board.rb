require_relative "piece.rb"

class Board
  attr_reader :grid
  def initialize
    @grid = Array.new(8) {Array.new(8)}
    populate
    set_starting_pos
  end
  
  def populate
    @grid[0] = [Piece.new("Rook"), 
               Piece.new("Knight"), 
               Piece.new("Bishop"), 
               Piece.new("King"), 
               Piece.new("Queen"), 
               Piece.new("Bishop"),
               Piece.new("Knight"), 
               Piece.new("Rook")]
    @grid[1].map! {|space| space = Piece.new("Pawn")}
  
    (2..5).each do |row|
      @grid[row].map! {|space| space = NullPiece.instance}
    end
  
    @grid[6].map! {|space| Piece.new("Pawn")}
    @grid[7] = [Piece.new("Rook"), Piece.new("Knight"), Piece.new("Bishop"), Piece.new("Queen"), Piece.new("King"), Piece.new("Bishop"),
    Piece.new("Knight"), Piece.new("Rook")]
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
  
end