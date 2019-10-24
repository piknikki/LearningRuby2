def add(first, second)
  # puts first, second
  # return first + second  -- don't need to use return, as it's implied
  first + second
end

def subtract(first, second)
  # puts first, second
  # return second - first  -- don't need to use return, as it's implied
  first - second
end

# puts add(4, 5)  # 9
# total = add(1,2)
# puts total  # 3
#
# puts add(add(1, 2), 4)  # 7
#
# puts subtract(42, 12)  # 30
#
# puts add(3, subtract(11, 7))
#
number = 9
puts number
number = subtract(number, 1)  # 8
puts number
number = subtract(number, 1)  # 7
puts number