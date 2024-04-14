# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val)
#         @val = val
#         @next = nil
#     end
# end

# @param {ListNode} head
# @return {Boolean}
def hasCycle(head)
  nums = {}
  
  while head
    return false unless head.next
      
    return true if nums[head.next] == 1
    
    nums[head.next] = 1
    
    head = head.next
  end
  
  false
end