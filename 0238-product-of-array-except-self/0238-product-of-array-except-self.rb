# @param {Integer[]} nums
# @return {Integer[]}
def product_except_self(nums)
  output_array = Array.new(nums.size) { 1 }
  prefix = 1
  
  nums.each_with_index do |num, idx|
    output_array[idx] = prefix
    prefix *= nums[idx]
  end
  
  postfix = 1
  (nums.size - 1).downto(0) do |idx|
    output_array[idx] *= postfix
    postfix *= nums[idx]
  end
  
  output_array
end