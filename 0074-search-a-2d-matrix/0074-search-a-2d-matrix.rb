# @param {Integer[][]} matrix
# @param {Integer} target
# @return {Boolean}
def search_matrix(matrix, target)
  left = 0
  right = matrix.size - 1

  while left <= right
    mid = (left + right) / 2
    
    if target >= matrix[mid][0] && target <= matrix[mid][-1]
      array = matrix[mid]
      inner_left = 0
      inner_right = array.size - 1
      
      while inner_left <= inner_right
        inner_mid = (inner_left + inner_right) / 2
        
        if array[inner_mid] == target
          return true
        elsif array[inner_mid] < target
          inner_left = inner_mid + 1
        else
          inner_right = inner_mid - 1
        end
      end
      
      return false
    elsif target < matrix[mid][0]
      right = mid - 1
    else
      left = mid + 1
    end
  end
  
  return false
end