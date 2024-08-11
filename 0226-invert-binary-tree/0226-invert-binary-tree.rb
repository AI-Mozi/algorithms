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
  unless root
    return
  else
    tmp = root.left
    root.left = root.right
    root.right = tmp
    
    invert_tree(root.left)
    invert_tree(root.right)
  end
  
  root
end

