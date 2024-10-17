class Node
  attr_accessor :children, :is_word
  
  def initialize(is_word)
    @children = {}
    @is_word = is_word
  end
end

class Trie
  attr_accessor :root

  def initialize
    @root = {}
  end

=begin
  :type word: String
  :rtype: Void
=end
  def insert(word)
    word_chars = word.chars
    first_char = word_chars.shift
    node = @root[first_char]
    
    unless node
      node = Node.new(word_chars.empty?)
      @root[first_char] = node
    end
    
    word_chars_size = word_chars.size - 1
    word_chars.each_with_index do |char, idx|
      unless node.children[char]
        node.children[char] = Node.new(word_chars_size == idx)
        node = node.children[char]
        next
      end

      if idx == word_chars_size
        node.children[char].is_word = true
        break
      end
      
      node = node.children[char]
    end
  end

=begin
  :type word: String
  :rtype: Boolean
=end
  def search(word)
    word_chars = word.chars
    node = @root[word_chars.shift]
    return false unless node
    
    word_chars.each do |char| 
      node = node.children[char]
      return false unless node
    end
    
    return node.is_word
  end

=begin
  :type prefix: String
  :rtype: Boolean
=end
  def starts_with(prefix)
    prefix_chars = prefix.chars
    node = @root[prefix_chars.shift]
    return false unless node
    
    prefix_chars.each do |char| 
      node = node.children[char]
      return false unless node
    end
    
    true
  end
end

# Your Trie object will be instantiated and called as such:
# obj = Trie.new()
# obj.insert(word)
# param_2 = obj.search(word)
# param_3 = obj.starts_with(prefix)