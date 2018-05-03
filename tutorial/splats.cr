def sum(*elements, initial = 0)
  total = initial
  elements.each do |value|
    total += value
  end
  total
end

puts sum 1, 2, 3, 4
puts sum 1, 2, 3, 4, 5, 6, initial: 10

def foo(x, y, *, z)
  puts x, y, z
end

foo 1, 2, z: 10

def tuplesum(x, y)
  x + y
end

# splatting a tuple
puts "tuplesum:", tuplesum *{1, 2}
