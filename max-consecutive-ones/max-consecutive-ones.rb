# @param {Integer[]} nums
# @return {Integer}
def find_max_consecutive_ones(nums)
    total_max = 0
    each_max = 0
    
    nums.each do |num|
        num == 1 ? each_max += 1 : each_max = 0
        
        total_max = each_max  if each_max >= total_max
    end
    total_max
end