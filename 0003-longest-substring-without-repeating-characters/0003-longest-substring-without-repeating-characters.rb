# @param {String} s
# @return {Integer}
def length_of_longest_substring(s)
  chars = s.chars
  hash = {}
  longest = 0
  l, r = 0, 0
  
  while r < s.size
    ll = chars[l]
    rl = chars[r]
    
    if hash[rl] && hash[rl] != 0
      while hash[rl] > 0
        hash[chars[l]] -= 1
        l += 1
      end
    end
    
    hash[rl] = 1
    longest = [longest, (r + 1 - l)].max
    r += 1
  end
  
  longest
end