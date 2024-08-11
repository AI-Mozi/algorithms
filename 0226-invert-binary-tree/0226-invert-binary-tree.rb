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
# @return {TreeNode}
def invert_tree(root)
  node = root
  
  unless node
    return root
  else
    tmp = node.left
    node.left = node.right
    node.right = tmp
    
    invert_tree(node.left)
    invert_tree(node.right)
  end
  
  root
end

