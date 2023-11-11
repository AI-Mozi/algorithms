# @param {Character[][]} board
# @return {Boolean}
def is_valid_sudoku(board)
  rows = Array.new(9) { [] }
  cols = Array.new(9) { [] }
  boxes = Array.new(9) { [] }
  box_row_id = 0
  box_col_id = 0
  
  board.each_with_index do |row, row_idx|
    box_row_id += 3 if row_idx % 3 == 0 && row_idx != 0
    
    row.each_with_index do |v, col_idx|
      box_col_id += 1 if col_idx % 3 == 0 && col_idx != 0
      box_id = box_row_id + box_col_id
      next if v == "."
      
      return false if rows[row_idx].include?(v)
      rows[row_idx] << v
      
      return false if cols[col_idx].include?(v)
      cols[col_idx] << v
      return false if boxes[box_id]&.include?(v)
      boxes[box_id] << v
    end
    
    box_col_id = 0
  end
  
  true
end