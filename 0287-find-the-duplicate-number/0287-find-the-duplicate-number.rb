# @param {Integer[]} nums
# @return {Integer}
def find_duplicate(nums)
  mem = {}
  
  nums.each do |num|
    return num if mem[num]
    
    mem[num] = true
  end
end