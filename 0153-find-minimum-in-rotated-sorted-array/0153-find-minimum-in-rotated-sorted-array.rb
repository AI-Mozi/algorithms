# @param {Integer[]} nums
# @return {Integer}
def find_min(nums)
  left  = 0
  right = nums.size - 1
  
  while left <= right
    return nums[left] if nums[left] <= nums[right]

    mid = (left + right) / 2
    
    if nums[mid] >= nums[left]
      left = mid + 1
    else
      right = mid
    end
  end
  
  return nums[left]
end