# @param {Character[][]} board
# @return {Boolean}
def is_valid_sudoku(board)
  rows  = Hash.new { |h, k| h[k] = [] }
  cols  = Hash.new { |h, k| h[k] = [] }
  boxes = Hash.new { |h, k| h[k] = [] }

  9.times do |r|
    9.times do |c|

      value = board[r][c]
      next if value == "."

      if rows[r].include?(value) ||
          cols[c].include?(value) ||
            boxes[[r / 3, c / 3]].include?(value)
        return false
      end

      rows[r].append(value)
      cols[c].append(value)
      boxes[[r / 3, c / 3]].append(value)
    end
  end

  true
end