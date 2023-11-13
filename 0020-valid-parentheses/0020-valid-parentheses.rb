# @param {String} s
# @return {Boolean}
def is_valid(s)
  chars_mapping = {
    '(' => ')',
    '{' => '}',
    '[' => ']'
  }
  stack = []
  
  s.each_char do |c|
    if chars_mapping.keys.include?(c)
      stack << c
    else
      return false if chars_mapping[stack.last] != c
        
      stack.pop
    end
  end
  
  return stack.empty?
end