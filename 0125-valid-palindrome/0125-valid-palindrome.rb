# @param {String} s
# @return {Boolean}
def is_palindrome(s)
  left = 0
  right = s.size - 1
  
  while left < right
    while left < right && !is_alpha(s[left])
      left += 1
    end
    
    while left < right && !is_alpha(s[right])
      right -= 1
    end
    
    return false if s[left].downcase != s[right].downcase
    
    left += 1
    right -= 1
  end
  
  true
end

def is_alpha(c)
  puts "#{c}: #{c.ord}"
  (65..90).include?(c.ord) || (97..122).include?(c.ord) || (48..57).include?(c.ord) 
end