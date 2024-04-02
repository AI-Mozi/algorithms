# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val = 0, _next = nil)
#         @val = val
#         @next = _next
#     end
# end
# @param {ListNode} head
# @return {ListNode}
def reverse_list(head)
  unless head
    return nil
  end
    
  new_head = head
  if head.next
    new_head = reverse_list(head.next)
    head.next.next = head
  end
  
  head.next = nil
  new_head
end