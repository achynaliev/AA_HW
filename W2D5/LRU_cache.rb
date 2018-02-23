class LRUCache

    def initialize(size)
      @size = size
      @arr = []
    end

    def count
      # returns number of elements currently in cache
      @arr.count
    end

    def add(el)
      # adds element to cache according to LRU principle
      if @arr.count == @size
        @arr.shift
      end
      if @arr.include?(el)
        @arr.delete(el)
        @arr << (el)
      else
        @arr << (el)
      end
    end

    def show
      # shows the items in the cache, with the LRU item first
      p @arr
      nil
    end

    private
    # helper methods go here!


end


johnny_cache = LRUCache.new(4)

johnny_cache.add("I walk the line")
johnny_cache.add(5)

puts johnny_cache.count # => returns 2

johnny_cache.add([1,2,3])
johnny_cache.add(5)
johnny_cache.add(-5)
johnny_cache.add({a: 1, b: 2, c: 3})
johnny_cache.add([1,2,3,4])
johnny_cache.add("I walk the line")
johnny_cache.add(:ring_of_fire)
johnny_cache.add("I walk the line")
johnny_cache.add({a: 1, b: 2, c: 3})
johnny_cache.show
