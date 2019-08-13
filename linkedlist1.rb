class LinkedListNode
  attr_accessor :value, :node

  def initialize(value, next_node=nil)
    @value = value
    @node = next_node
  end
end

  #def print_values(list_node)
    #if list_node
     # print "#{list_node.value} --> "
    #  print_values(list_node.node)
    #else
     # print "nil/n"
     # return
    #end
  #end

    #def reverse_list (list)
    #current_head = list.next_node
    #list.next_node = previous
    #if current_head
     # reverse_list(current_head, list)
    #else
     # list
    #end
  #end

class Stack
    attr_reader :first

    def initialize
      @first = nil
    end

    def push(value)
      @first = LinkedListNode.new(value, @first)
    end
    alias_method :"<<", :push

    def pop
      return print "nil/n" if @first.nil?

        print "{first.value}/n"
        @first = @first.node
        value
      end
  
end

  def reverse_list(list)
      stack = Stack.new

      while list
          stack.push(list.value)
          list = list.node
      end

      return stack.first
  end


  def print_values(list_node)
    if list_node
      print "#{list_node.value} --> "
      print_values(list_node.node)
    else
      print "nil/n"
      return
    end
  end

node1 = LinkedListNode.new(37)
node2 = LinkedListNode.new(99, node1)
node3 = LinkedListNode.new(12, node2)


print_values(node3)

puts "-------"

revlist = reverse_list(node3)

print_values(revlist)




