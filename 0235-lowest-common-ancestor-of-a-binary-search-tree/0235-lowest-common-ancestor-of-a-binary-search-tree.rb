# Definition for a binary tree node.
# class TreeNode
#     attr_accessor :val, :left, :right
#     def initialize(val)
#         @val = val
#         @left, @right = nil, nil
#     end
# end

# @param {TreeNode} root
# @param {TreeNode} p
# @param {TreeNode} q
# @return {TreeNode}
def lowest_common_ancestor(root, p, q)
  lca = root
  
  while true
    if p.val == lca.val || q.val == lca.val
      return lca  
    end
    
    if (p.val < lca.val && q.val > lca.val) || (q.val < lca.val && p.val > lca.val)
      return lca
    end

    if p.val < lca.val
      lca = lca.left
    else
      lca = lca.right
    end
  end
end