class Node
    attr_accessor :value, :next_node
    
    def initialize(value, next_node=nil)
        @value = value
        @next_node = next_node
    end
  
end


class Stack
    attr_reader :head
    
    def initialize
        @head = nil
    end
    
    def push(value)
        @head = Node.new(value, @head) 
    end
    
    def peek
        @head.value            
    end
    
    def pop
        first_node = @head
        @head = @head.next_node
        first_node.next_node = nil
        first_node.value
    end
    
end

def print_values(list_node)
    if list_node
        print "#{list_node.value} -->"
        print_values(list_node.next_node)
    else
        print "nil\n"
        return
    end
end


def reverse_list(list)

    reverse_stack = Stack.new

    while list
        @head = list
        reverse_stack.push(@head.value)
        
        list = list.next_node
    end
    reverse_stack
end


mystack = Stack.new


mystack.push(10)
mystack.push(11)
mystack.push(12)


linked_list = print_values(mystack.head)

reversed_stack = reverse_list(mystack.head)

print_values(reversed_stack.head)
