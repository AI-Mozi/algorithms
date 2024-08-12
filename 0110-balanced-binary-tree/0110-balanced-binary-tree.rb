# Definition for a binary tree node.
# class TreeNode
#     attr_accessor :val, :left, :right
#     def initialize(val = 0, left = nil, right = nil)
#         @val = val
#         @left = left
#         @right = right
#     end
# end
# @param {TreeNode} root
# @return {Boolean}
def is_balanced(root)
  balanced(root)
end

def height(node)
  return 0 unless node
  
  return 1 + [height(node.left), height(node.right)].max
end

def balanced(node)
  return true unless node

  left = height(node&.left)
  right = height(node&.right)
  
  return (left - right).abs <= 1 && balanced(node&.left) && balanced(node&.right)
end