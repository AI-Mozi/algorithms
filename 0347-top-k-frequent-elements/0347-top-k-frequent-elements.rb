# @param {Integer[]} nums
# @param {Integer} k
# @return {Integer[]}
def top_k_frequent(nums, k)
  return nums if k == nums.size
  
  hash = {}
  nums.each do |n|
    hash[n] = (hash[n] || 0) + 1
  end
  
  hash.sort_by { |k, v| -v }.to_h.keys.first(k)
end