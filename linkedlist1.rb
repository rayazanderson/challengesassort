class LinkedListNode
  attr_accessor :value, :node

  def initialize(value, next_node=nil)
    value = value
    node = next_node
  end
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
    attr_reader :data

    def initialize
      @first = nil
    end

    def push(value)
      @first = LinkedListNode.new(value, @first)
    end
    alias_method :"<<", :push

    def pop
      if @first.nil?
        puts "Stack is empty"
      else
        value = @first.value
        @first = @first.node
        value
      end
    end

    def is_empty?
      @first.nil?
    end
  
end

node1 = LinkedListNode.new(37)
node2 = LinkedListNode.new(99, node1)
node3 = LinkedListNode.new(12, node2)


print_values(node3)

#puts "-------"

#revlist = reverse_list(node3)

#print_values(revlist)

def reverse_list(list)
    # ADD CODE HERE

    while list
        # ADD CODE HERE
        list = list.node
    end

    # ADD CODE HERE
end

# Creates a new Stack object
stack = Stack.new

# Pushes (adds) the number 1 to the empty stack
stack.push(1)

# Pushes the number 2 to the TOP of the stack
stack.push(2)

stack.push(3)

stack.push(4)

stack.push(5)

# Pops (removes) the TOP number from the stack (2)
puts stack.pop


# Pops the remaining number from the stack (1)
puts stack.pop


# Tries to pop the TOP number from the stack,
# but it is empty so it returns nil
puts stack.pop

