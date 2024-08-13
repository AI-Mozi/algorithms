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
def diameter_of_binary_tree(root)
  @max = 0
  dfs(root)
  @max
end

def dfs(node)
  return 0 unless node
  
  left = dfs(node&.left)
  right = dfs(node&.right)
  
  @max = [@max, (left + right)].max
  
  return 1 + [left, right].max
end
