class Queue

  def initialize
    @queue = []
  end

  def add(el)
    @queue.unshift(el)
  end

  def remove
    @queue.pop
  end

  def show
    copy = @queue.dup
  end

end

my_queue = Queue.new
my_queue.add(1)
p my_queue.show
my_queue.add(2)
p my_queue.show
my_queue.add(3)
p my_queue.show
my_queue.add(4)
p my_queue.show
my_queue.remove
p my_queue.show
my_queue.remove
p my_queue.show
my_queue.remove
p my_queue.show
my_queue.add(7)
p my_queue.show
my_queue.remove
p my_queue.show
