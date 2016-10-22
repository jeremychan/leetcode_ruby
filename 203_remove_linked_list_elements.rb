require_relative 'common/list_node'

# @param {ListNode} head
# @param {Integer} val
# @return {ListNode}
def remove_elements(head, val)
  prev=nil
  current=head
  while current != nil
    if current.val == val
      if (prev == nil)
        head = current.next
      else
        prev.next = current.next
      end
    else
      prev = current
    end
    current = current.next
  end
  head
end