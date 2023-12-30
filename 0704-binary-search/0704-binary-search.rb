# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer}
def search(nums, target)
  left = 0
  right = nums.size - 1

  while (left <= right)
    middle = (right + left) / 2

    if nums[middle] == target
      return middle
    elsif nums[middle] < target
      left = middle + 1
    else
      right = middle - 1
    end
  end

  return -1
end