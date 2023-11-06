# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer[]}
def two_sum(nums, target)
  hash = {}
  
  nums.each_with_index do |n, idx|
    t = target - n
    
    if hash[t]
      return [idx, hash[t]]
    else
      hash[n] = idx
    end
  end
end