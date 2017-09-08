class Queue
  def initialize
    @queue = []   # => []
  end             # => :initialize

  def enqueue(el)
    @queue.push(el)  # => [1], [1, 2], [1, 2, 3]
  end                # => :enqueue

  def dequeue
    @queue.shift  # => 1, 2
  end             # => :dequeue

  def show
    @queue.first
  end             # => :show
end               # => :show

q = Queue.new  # => #<Thread::Queue:0x007f8cb9057d58 @queue=[]>
q.enqueue(1)   # => [1]
q.enqueue(2)   # => [1, 2]
q.enqueue(3)   # => [1, 2, 3]
q.dequeue      # => 1
q.dequeue      # => 2
q            # => #<Thread::Queue:0x007f8cb9057d58 @queue=[3]>
