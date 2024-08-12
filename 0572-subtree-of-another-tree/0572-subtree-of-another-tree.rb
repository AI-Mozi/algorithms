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
# @param {TreeNode} sub_root
# @return {Boolean}
def is_subtree(root, sub_root)
  find(root, sub_root)
end

def find(root, sub_root)
  return false unless root
  if root&.val == sub_root.val
    return true if check_nodes(root, sub_root)
  end
    
  l = find(root.left, sub_root)
  r = find(root.right, sub_root)
  
  l || r
end

def check_nodes(node1, node2)
  return true if node1.nil? && node2.nil?
  return false if node1&.val != node2&.val
  
  left = check_nodes(node1.left, node2.left)
  right = check_nodes(node1.right, node2.right)
  
  left && right
end


