# @param {Integer[]} nums
# @return {Integer[][]}
def permute(nums)
  res = []
  pr(res, [], nums)
  res
end

def pr(res, ans, arr)
  if arr.size == 1 
    res << ans + arr
    return
  end
  
  0.upto(arr.size - 1) do |idx|
    swap_arr = swap(arr, 0, idx)
    pr(res, ans + [swap_arr[0]], swap_arr[1..])  
  end
end

def swap(arr, idx1, idx2)
  val1 = arr[idx1]
  arr[idx1] = arr[idx2]
  arr[idx2] = val1
  
  arr
end

