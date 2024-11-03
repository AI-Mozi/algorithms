# @param {Integer[][]} grid
# @return {Integer}
POSITIONS = [
  [0, 1],
  [1, 0],
  [0, -1],
  [-1, 0]
]

def max_area_of_island(grid)
  max_area = 0
  
  grid.each_with_index do |row, y|
    row.each_with_index do |cell, x|
      if cell == 1
        is_area = find(grid, y, x, 0) 
        
        max_area = [max_area, is_area].max
      end
    end
  end
  
  max_area
end

def find(grid, y, x, sum)
  if y < 0 || x < 0 || y >= grid.size || x >= grid[0].size || grid[y][x] != 1
    return 0
  end
  
  grid[y][x] = "#"
  sum = 1
  
  POSITIONS.each do |y_ch, x_ch|
     sum += find(grid, y + y_ch, x + x_ch, sum)
  end
  
  sum
end