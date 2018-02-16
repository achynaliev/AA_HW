class Stack

  def initialize
    @stack = []
  end

  def add(el)
    @stack.push(el)
  end

  def remove
    @stack.pop
  end

  def show
    copy = @stack.dup
  end

end

my_stack = Stack.new
my_stack.add(1)
my_stack.add(2)
my_stack.add(4)
my_stack.add(5)
my_stack.add(6)
my_stack.add(7)
p my_stack.show
my_stack.remove
p my_stack.show
my_stack.remove
p my_stack.show
my_stack.remove
p my_stack.show
my_stack.remove
