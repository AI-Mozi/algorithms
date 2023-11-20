# @param {Integer[]} numbers
# @param {Integer} target
# @return {Integer[]}
def two_sum(numbers, target)
  l = 0
  r = numbers.size - 1
  
  while (numbers[l] + numbers[r] != target)
    numbers[l] + numbers[r] > target ? r -= 1 : l += 1
  end
  
  [l + 1, r + 1]
end