# @param {String} s
# @return {Boolean}
def is_palindrome(s)
  s = s.gsub(/[^0-9a-z ]/i, '').downcase.delete(' ')
  left_ptr = 0
  right_ptr = s.size - 1
  
  s.each_char do |char|
    return false if s[left_ptr] != s[right_ptr]
    
    left_ptr += 1
    right_ptr -= 1
  end
  
  true
end
