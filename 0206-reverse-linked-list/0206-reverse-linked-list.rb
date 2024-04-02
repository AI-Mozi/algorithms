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
  res = []
  return res unless head
  res << head.val
  
  while (head.next) do
    head = head.next
    res << head.val
  end
  
  res.reverse
end