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
def max_depth(root)
#   return 0 unless root
  
#   return 1 + [self.max_depth(root.left), self.max_depth(root.right)].max
  
  stack = [[root, 1]]
  res = 0

  while !stack.empty?
    node, depth = stack.pop
    
    if node
      res = [res, depth].max
      stack << [node.left, depth + 1]
      stack << [node.right, depth + 1]
    end
  end
  
  res
end

