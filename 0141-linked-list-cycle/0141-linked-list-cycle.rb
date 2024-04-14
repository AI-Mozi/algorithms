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
  slow_ptr = head
  fast_ptr = head
  
  while fast_ptr && fast_ptr.next
    slow_ptr = slow_ptr.next
    fast_ptr = fast_ptr.next.next
    
    return true if slow_ptr == fast_ptr
  end
  
  false
end