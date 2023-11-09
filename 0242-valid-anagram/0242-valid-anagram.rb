# @param {String} s
# @param {String} t
# @return {Boolean}
def is_anagram(s, t)
  return false if s.size != t.size

  return s.split('').sort.join('') == t.split('').sort.join('')
end