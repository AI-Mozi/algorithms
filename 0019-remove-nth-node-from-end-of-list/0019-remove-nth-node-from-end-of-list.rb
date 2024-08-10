# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val = 0, _next = nil)
#         @val = val
#         @next = _next
#     end
# end
# @param {ListNode} head
# @param {Integer} n
# @return {ListNode}
def remove_nth_from_end(head, n)
  dummy = ListNode.new(nil, head)
  l = dummy
  prev = nil
  r = l
  1.upto(n) do
    r = r.next
  end
  
  while (r)
    prev = l
    l = l.next
    r = r.next
  end
  
  if l == head
    if l.next
      head = l.next
      return head
    end
    
    return nil
  end
  
  if l.next
    prev.next = l.next
  else
    prev.next = nil
  end
  
  head
end