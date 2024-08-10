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
  
  while l1 && l2
    sum = l1.val + l2.val + to_add
    to_add = 0
    
    if sum < 10
      l1.val = sum 
    else
      l1.val = sum % 10
      to_add += 1
    end
    
    prev = l1

    l1 = l1.next
    l2 = l2.next
  end
  
  while l1
    sum = l1.val + to_add
    to_add = 0
    
    if sum < 10
      l1.val = sum
    else
      l1.val = sum % 10
      to_add += 1
    end
    
    prev = l1
    l1 = l1.next
  end
  
  while l2
    prev.next = l2
    
    sum = l2.val + to_add
    to_add = 0
    
    if sum < 10
      l2.val = sum
    else
      l2.val = sum % 10
      to_add += 1
    end
    
    prev = l2
    l2 = l2.next
  end
  
  if to_add > 0
    prev.next = ListNode.new(to_add)
  end
  
  head
end