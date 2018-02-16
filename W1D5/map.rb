class MyMap

  def initialize
    @map = []
  end

  def assign(key, value)
    @map.each do |el|
      if el[0] == key
        el[1] = value
      end
    end

    @map << [key, value]
  end

  def lookup(key)
    @map.each do |el|
      return el[1] if el[0] == key
    end
    nil
  end

  def remove(key)
    value = nil
    @map.each do |el|
      value = el[1] if el[0] == key
    end
    @map.delete([key, value])
  end

  def show
    copy = @map.dup
  end

end

my_map = MyMap.new
my_map.lookup(5)
my_map.remove(3)
my_map.assign(5, "five")
p my_map.show
my_map.assign(5, "six")
p my_map.lookup(5)
my_map.assign(1,"one")
p my_map.show
my_map.remove(5)
p my_map.show
