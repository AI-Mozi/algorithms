# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer}
def search(nums, target)
  left = 0
  right = nums.length - 1
  
  while left <= right
    pointer = (left + right) / 2 

    if nums[pointer] == target
      return pointer
    elsif nums[pointer] < target
      left = pointer + 1
    else nums[pointer] > target
      right = pointer - 1
    end
  end
  return -1
end