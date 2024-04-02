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
  prev, curr = nil, head
  
  while curr do
    n = curr.next
    curr.next = prev
    prev = curr
    curr = n
  end
  
  return prev
end