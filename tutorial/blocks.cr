def twice
  yield
  yield
end

# or

def other_twice(&block)
  yield
  yield
end

# following are (almost) equivelant

twice do
  puts "Hello!"
end

twice() do
  puts "Hello!"
end

twice {
  puts "Hello!"
}

# the following are equivelant
# left-associative

# foo var do
#   something
# end

# foo(bar) do
#   something
# end

# the following are equivelant
# right-associative

# foo bar { something }

# foo (bar {something})

# yield arguments:

def thrice
  yield 1
  yield 2
  yield 3
end

thrice do |i|
  puts "Got #{i}"
end

# or

def many
  yield 1, 2, 3
end

many do |x, y, z|
  puts x + y + z
end

# or

many do |x, y| # less than required number of arguments
  puts x + y
end

# short one-argument syntax

# method do |arg|
#   arg.some_method
# end

# is same as

# method &.some_method

# yield value

def twice
  v1 = yield 1 # is value at end of the block (i + 1) = 2
  puts "v1: #{v1}"

  v2 = yield 2 # is value at end of the block (i + 1) = 3
  puts "v2: #{v2}"
end

twice do |i|
  i + 1
end

# dummy transformation method

def transform(value)
  yield value
end

transform(1) { |x| x + 1 } # => 2

# performance

3.times do |i|
  puts i
end
