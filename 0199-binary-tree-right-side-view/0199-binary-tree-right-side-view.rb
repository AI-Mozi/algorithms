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
# @return {Integer[]}
def right_side_view(root)
  res = []
  return res unless root
  
  nodes = [root]
  while !nodes.empty?
    res << nodes[-1].val
    
    tmp_nodes = []
    nodes.each do |node|
      tmp_nodes << node.left if node.left 
      tmp_nodes << node.right if node.right
    end
    
    nodes = tmp_nodes
  end
  
  res
end