# @param {Integer[]} temperatures
# @return {Integer[]}
def daily_temperatures(temperatures)
  stack = []
  res   = []
  
  temperatures.each_with_index do |tmp, idx|
    if stack.empty? || stack[-1][0] > tmp
      stack << [tmp, idx]
      next
    end
    
    while !stack.empty? && stack[-1][0] < tmp
      val, p_idx = stack.pop
      res[p_idx] = idx - p_idx
    end
    stack << [tmp, idx]
  end
  
  stack.each { |_, i| res[i] = 0}
  
  res
end