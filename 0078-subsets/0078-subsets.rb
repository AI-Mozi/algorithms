# @param {Integer[]} nums
# @return {Integer[][]}
def subsets(nums)
  res = []
  
  chose(res, [nums[0]], nums[1..])
  chose(res, [], nums[1..])
  
  res
end

def chose(res, ans, nums)
  if nums.empty?
    res << ans
    return
  end
  
  chose(res, ans + [nums[0]], nums[1..]) 
  chose(res, ans, nums[1..])
end