# @param {Character[][]} grid
# @return {Integer}
POSITIONS = [
  [0, 1],
  [1, 0],
  [0, -1],
  [-1, 0]
]

def num_islands(grid)
  islands = 0
  
  grid.each_with_index do |row, y|
     row.each_with_index do |cell, x|
        if cell == "1"
          find(grid, y, x)
          islands += 1
        end
     end
  end
  
  islands
end

def find(grid, y, x)
  if y < 0 || x < 0 || y >= grid.size || x >= grid[0].size || grid[y][x] != "1"
     return false
  end
  
  grid[y][x] = "#"
  
  POSITIONS.each do |y_mul, x_mul|
    find(grid, y + y_mul, x + x_mul)
  end
end