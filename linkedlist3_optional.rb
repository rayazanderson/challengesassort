def print_values(list_node)
  if list_node
    print "#{list_node.value} --> "
    print_values(list_node.next_node)
  else
    print "nil\n"
    return
  end
end

#think about the tortoise and hare loop on the floyd wiki page
def infinite_loop?(list)
  tortoise = list.next_node
  hare = list.next_node

  untill hare.nil?
    hare = hare.next_node
    return false if hare.nil

    hare = hare.next_node
    tortoise = tortoise.next_node
    return true if hare == tortoise
  end

  return false


node1 = LinkedListNode.new(37)
node2 = LinkedListNode.new(99, node1)
node3 = LinkedListNode.new(12, node2)

puts infinite_loop? (node)
node1.next_node = node # this creates an infinite loop
puts infinite_loop? (node)