# @param {String[]} strs
# @return {String[][]}
def group_anagrams(strs)
  # [Anageram => [Anagram]]  
  hash = {}
  strs.each do |word|
    count = [0] * 26
    word.each_char { |c| count[c.ord - "a".ord] += 1 }
    hash[count] ? hash[count] << word : hash[count] = [word]
  end
  
  hash.values
end