# @param {Integer[]} height
# @return {Integer}
def max_area(height)
  first = 0
  last = height.size - 1
  max_amount = 0
  
  while (first < last)
    axis = last - first
    max_h = [height[first], height[last]].min
    
    if max_amount < axis * max_h
      max_amount = axis * max_h
    end
    
    if height[first] < height[last]
      first += 1
    else
      last -= 1
    end
  end
  
  max_amount
end