# @param {Integer[]} nums
# @return {Integer[][]}
def three_sum(nums)
  nums = nums.sort
  res = []
  
  nums.each_with_index do |e, i|
    next if i > 0 && e == nums[i - 1]
    
    l = i + 1
    r = nums.size - 1
    
    while l < r
      sum = e + nums[l] + nums[r]
      
      if sum == 0
        res << [e, nums[l], nums[r]]
        l += 1
        while nums[l] == nums[l - 1] && l < r
            l += 1
        end
      elsif sum > 0
        r -= 1
      else
        l += 1
      end
    end
  end
  
  res
end