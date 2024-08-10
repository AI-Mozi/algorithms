# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val = 0, _next = nil)
#         @val = val
#         @next = _next
#     end
# end
# @param {ListNode} l1
# @param {ListNode} l2
# @return {ListNode}
def add_two_numbers(l1, l2)
  head = l1
  to_add = 0
  prev = nil
  curr = nil
  
  while l1 || l2
    sum = (l1&.val || 0) + (l2&.val || 0) + to_add
    to_add = 0
    
    curr = l1 || l2
    
    if sum < 10
      curr.val = sum
    else
      curr.val = sum % 10
      to_add += 1
    end
    
    prev.next = curr if prev
    prev = curr
    
    l1 = l1&.next
    l2 = l2&.next
  end
  
  if to_add > 0
    prev.next = ListNode.new(to_add)
  end
  
  head
end