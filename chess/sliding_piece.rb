
require "byebug"

module SlidingPiece
  
  HORIZONTAL_DIRS = [[0, 1], [0, -1], [1, 0], [-1, 0]] #diff either x or y goes up, not both
  DIAGONAL_DIRS = [  [1, 1], [1, -1], [-1, 1], [-1, -1] ]
  
  def moves  
    moves = [] 
  end
  
  def horizontal_dirs
    HORIZONTAL_DIRS
  end 
  
  def diagonal_dirs
    DIAGONAL_DIRS
  end 
  
  private 
   
  def move_dirs 
  end
  
  def grow_unblocked_moves_in_dir
    
  end
  
end 