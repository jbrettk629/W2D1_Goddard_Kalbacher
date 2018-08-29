
require "byebug"

module SlidingPiece
  
  HORIZONTAL_DIRS = [[0, 1], [0, -1], [1, 0], [-1, 0]] #diff either x or y goes up, not both
  DIAGONAL_DIRS = [  [1, 1], [1, -1], [-1, 1], [-1, -1] ]
  
  def moves(current_pos) 
    
    
  end
  
  def get_moves(dirs_arg, current_pos)
    pos_moves = []
    dirs_arg.each do |diff|
      cx, cy = current_pos
      dx, dy = diff
     nx, ny = cx, cy
       # until nx == 7 || nx == 0 || ny == 7 || ny == 0
       #     nx, ny = (cx + dx), (cx + dy)
       #   pos_moves << [nx, ny]
       # end
      
      until  nx > 7 || nx < 0 || ny > 7 || ny < 0
      # nx, ny = 
         nx += dx
         ny += dy
         pos_moves << [nx, ny]
       end
    end
    pos_moves.select {|move| move.none? {|el| el > 7 || el < 0 }  }
  end
  
  def horizontal_dirs(current_pos)
    get_moves(HORIZONTAL_DIRS, current_pos)
  end 
  
  def diagonal_dirs(current_pos)
    get_moves(DIAGONAL_DIRS, current_pos)
  end 
  
  private 
   
  def move_dirs 
  
  end
  
  def grow_unblocked_moves_in_dir
    
  end
  
end 