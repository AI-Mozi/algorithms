# @param {Integer[]} nums
# @return {Integer}
def find_numbers(nums)
  counter = 0
  nums.each { |num| counter += 1 if num.digits.count % 2 == 0 }
    
  counter
end