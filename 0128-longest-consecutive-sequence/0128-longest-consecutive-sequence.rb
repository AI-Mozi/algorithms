# @param {Integer[]} nums
# @return {Integer}
def longest_consecutive(nums)
  nums = Set.new(nums)
  longest = 0
  
  nums.each do |num|
    if !nums.include?(num - 1)
      len = 0
      len += 1 while nums.include?(num + len)
      
      longest = [len, longest].max
    end
  end
  
  longest
end