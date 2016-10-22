class List
  def initialize(head)
    @head = head
  end

  def self.initialize_from_list(list)
    prev = nil
    head = nil
    list.each { |x|
      node = ListNode.new(x)
      node.next = nil
      if prev != nil
        prev.next = node
      else
        head = node
      end
      prev = node
    }
    self.new(head)
  end

  def dump
    current = @head
    out = ''
    while current != nil
      out += "[#{current.val}]"
      current = current.next
      if current != nil
        out += "->"
      end
    end
    out
  end

  def head
    @head
  end
end