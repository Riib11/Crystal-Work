arr = [1, 2, 3]
puts arr.map { |x| x + 1 }         # => [2, 3, 4]
puts arr.select { |x| x % 2 == 1 } # => [1, 3]
