# @param {Integer[]} nums
# @return {Boolean}
def contains_duplicate(nums)
  hash = {}
  nums.each do |n|
    if hash[n]
      return true
    else
      hash[n] = 1
    end
  end
  
  return false
end