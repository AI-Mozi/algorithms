# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val = 0, _next = nil)
#         @val = val
#         @next = _next
#     end
# end
# @param {ListNode} list1
# @param {ListNode} list2
# @return {ListNode}
def merge_two_lists(list1, list2)
  node = ListNode.new
  head = node

  while (list1 && list2)
    if list1.val <= list2.val
      node.next = list1
      list1 = list1.next
    else
      node.next = list2
      list2 = list2.next
    end
    
    node = node.next
  end
  
  if list2
    node.next = list2
  end
  
  if list1
    node.next = list1
  end
  
  head.next
end