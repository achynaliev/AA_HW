def sum_to(number)
  return nil if number < 0
  return number if number <= 1
  number + sum_to(number - 1)
end

puts sum_to(5)  # => returns 15
puts sum_to(1)  # => returns 1
puts sum_to(9)  # => returns 45
puts sum_to(-8)  # => returns nil
puts "*******************"

def add_numbers(array)
  return nil if array.length == 0
  return array[0] if array.length == 1
  array[-1] + add_numbers(array[0..-2])
end

puts add_numbers([1,2,3,4]) # => returns 10
puts add_numbers([3]) # => returns 3
puts add_numbers([-80,34,7]) # => returns -39
puts add_numbers([]) # => returns nil
puts "*******************"


def gamma_fnc(num)
  return nil if num < 1
  return 1 if num == 1
  (num-1) * gamma_fnc(num-1)
end

puts gamma_fnc(0)  # => returns nil
puts gamma_fnc(1)  # => returns 1
puts gamma_fnc(4)  # => returns 6
puts gamma_fnc(8)  # => returns 5040
puts "*******************"

def ice_cream_shop(flavors, favorite)
  return false if flavors.length == 0
  return true if flavors[-1] == favorite
  ice_cream_shop(flavors[0..-2], favorite)
end

puts ice_cream_shop(['vanilla', 'strawberry'], 'blue moon')  # => returns false
puts ice_cream_shop(['pistachio', 'green tea', 'chocolate', 'mint chip'], 'green tea')  # => returns true
puts ice_cream_shop(['cookies n cream', 'blue moon', 'superman', 'honey lavender', 'sea salt caramel'], 'pistachio')  # => returns false
puts ice_cream_shop(['moose tracks'], 'moose tracks')  # => returns true
puts ice_cream_shop([], 'honey lavender')  # => returns false
puts "*******************"

def reverse(str)
  return str if str.length <= 1
  str[-1] + reverse(str[0..-2])
end

puts reverse("house") # => "esuoh"
puts reverse("dog") # => "god"
puts reverse("atom") # => "mota"
puts reverse("q") # => "q"
puts reverse("id") # => "di"
puts reverse("") # => ""
puts "*******************"

# def add_odds(n)
#     return n if n == 1
#
#     if n.even?
#       add_odds(n-1)
#     else
#       n + add_odds(n-1)
#     end
# end
#
# puts add_odds(1)

def powers_sum(n)
  return n if n == 1
  print " 1 "
  (n * n) * powers_sum(n - 1)
end

puts
puts powers_sum(10)
