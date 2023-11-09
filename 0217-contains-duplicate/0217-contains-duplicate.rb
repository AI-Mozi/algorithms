# @param {Integer[]} nums
# @return {Boolean}
def contains_duplicate(nums)
  hash = {}
  nums.each do |n|
    return true if hash[n]

    hash[n] = 1
  end
  
  return false
end