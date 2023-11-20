# @param {Integer[]} numbers
# @param {Integer} target
# @return {Integer[]}
def two_sum(numbers, target)
  l = 0
  r = numbers.size - 1
  
  while (numbers[l] + numbers[r] != target)
    sum = numbers[l] + numbers[r]
    if sum > target
      r -= 1
    else
      l += 1
    end
  end
  
  [l + 1, r + 1]
end