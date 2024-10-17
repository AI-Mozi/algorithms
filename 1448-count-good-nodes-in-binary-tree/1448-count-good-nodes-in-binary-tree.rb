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
# @return {Integer}
def good_nodes(root)
  1 + dfs(root.left, root.val) + dfs(root.right, root.val) 
end

def dfs(node, max)
  return 0 unless node

  val = 0
  if node.val >= max
    val = 1
    max = node.val
  end
  
  val + dfs(node.left, max) + dfs(node.right, max)
end