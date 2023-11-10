# @param {Integer[]} nums
# @param {Integer} k
# @return {Integer[]}
def top_k_frequent(nums, k)
  hash = {}
  nums.each do |n|
    hash[n] ? hash[n] += 1 : hash[n] = 1
  end
  
  hash.sort_by { |k, v| -v }.to_h.keys.first(k)
end