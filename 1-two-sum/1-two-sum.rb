# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer[]}
def two_sum(nums, target)
    hash = Hash.new
    arr = []
    
    nums.each_with_index do |num, index|
        number = target - num
        if hash.include?(number)
            arr << index
            arr << hash[number]
        else    
            hash[num] = index
        end
    end
    
    arr
end