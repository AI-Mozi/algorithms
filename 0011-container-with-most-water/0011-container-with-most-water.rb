# @param {Integer[]} height
# @return {Integer}
def max_area(height)
  first = 0
  last = height.size - 1
  max_amount = 0
  
  while (first < last)
    axis = last - first
    max_h = [height[first], height[last]].min
    size = axis * max_h
    
    max_amount = size if max_amount < size
    height[first] < height[last] ? first += 1 : last -= 1
  end
  
  max_amount
end