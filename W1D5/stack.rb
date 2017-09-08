class Stack
  def initialize
    @queue = []
  end

  def add(el)
    @queue << el
  end

  def remove
    @queue.pop
  end

  def show
    @queue.last
  end
end

# stack = Stack.new  # => #<Stack:0x007f905f057f20 @queue=[]>
# stack.add(1)       # => [1]
# stack.add(2)       # => [1, 2]
# stack.add(3)       # => [1, 2, 3]
# stack.remove       # => 3
# stack.show         # => 2
