# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val = 0, _next = nil)
#         @val = val
#         @next = _next
#     end
# end
# @param {ListNode} head
# @return {Void} Do not return anything, modify head in-place instead.
def reorder_list(head)
  first_half = head
  slow = head
  fast = head.next
  
  while (fast && fast.next)
    slow = slow.next
    fast = fast.next.next
  end
  
  second_half = slow.next
  slow.next = nil
  prev = nil

  while (second_half)
    nxt = second_half.next
    second_half.next = prev
    break unless nxt
    prev = second_half
    second_half = nxt
  end
  
  while (first_half && second_half)
    first_half_next = first_half.next
    second_half_next = second_half.next
    
    first_half.next = second_half
    second_half.next = first_half_next
    
    first_half = first_half_next
    second_half = second_half_next
  end
  
  head
end