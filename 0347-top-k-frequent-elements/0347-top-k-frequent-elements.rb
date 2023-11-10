# @param {Integer[]} nums
# @param {Integer} k
# @return {Integer[]}
def top_k_frequent(nums, k)
  return nums if k == nums.size
  
  hash = {}
  res = []
  nums.each do |n|
    hash[n] = (hash[n] || 0) + 1
  end
  
  sorted = hash.sort_by { |k, v| -v }
  for i in 0...k do
        res.append(sorted[i][0])
    end
  res
end