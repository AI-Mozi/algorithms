# @param {String} s
# @param {String} t
# @return {Boolean}
def is_anagram(s, t)
  return false if s.size != t.size

  s_hash = {}
  t_hash = {}
  
  s.each_char do |c|
    s_hash[c] ? s_hash[c] += 1 : s_hash[c] = 0
  end
  
  t.each_char do |c|
    t_hash[c] ? t_hash[c] += 1 : t_hash[c] = 0
  end
  
  return t_hash == s_hash
end