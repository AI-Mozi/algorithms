# @param {Integer[][]} grid
# @return {Integer}
POSITIONS = [
  [0, 1],
  [1, 0],
  [0, -1],
  [-1, 0]
]

def oranges_rotting(grid)
  min = 0
  rotten = []
  counter = 0
  
  while true
    any_ones = false
    
    grid.each_with_index do |row, y|
      row.each_with_index do |cell, x|
        if cell == 2
          rotten << [y, x] 
        end
        
        if cell == 1
          any_ones = true 
        end
      end
    end
    
    return min unless any_ones
    if rotten.empty?
      return any_ones ? -1 : min
    end

    rotten.each do |r_y, r_x|
      grid[r_y][r_x] = "#"

      POSITIONS.each do |y_ch, x_ch| 
        change(grid, r_y + y_ch, r_x + x_ch)
      end
    end
    rotten = []
    
    min += 1
  end
end

def change(grid, y, x)
  if y < 0 || x < 0 || y >= grid.size || x >= grid[0].size || grid[y][x] != 1
    return
  end
  
  grid[y][x] = 2
end
