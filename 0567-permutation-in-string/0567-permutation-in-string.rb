# @param {String} s1
# @param {String} s2
# @return {Boolean}
def check_inclusion(s1, s2)
  return false if s1.size > s2.size
  l, r = 0, s1.size - 1

  s1_chars = s1.chars
  s2_chars = s2.chars

  h1 = Hash.new.tap { |h| ('a'..'z').each { |l| h[l] = 0 } }
  h2 = h1.clone
  
  s1_chars.each { h1[_1] += 1 }
  0.upto(r - 1) { h2[s2_chars[_1]] += 1 }

  while r < s2.size
    h2[s2_chars[r]] += 1

    if h1 == h2
      return true
    end
    
    h2[s2_chars[l]] -= 1
    l += 1
    r += 1
  end
  
  false
end