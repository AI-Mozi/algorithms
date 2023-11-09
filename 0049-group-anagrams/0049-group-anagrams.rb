# @param {String[]} strs
# @return {String[][]}
def group_anagrams(strs)
  # [Anageram => [Anagram]]  
  hash = {}
  strs.each do |word|
    s_word = word.split('').sort.join('')
    hash[s_word] ? hash[s_word] << word : hash[s_word] = [word]
  end
  
  hash.values
end