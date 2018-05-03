def add(x, y)
  x + y
end

puts add(1, 2)

def even?(x)
  x % 2 == 0
end

puts (even?(10))
puts (even? 10)

# method defintion
def foo(
  # These are positional arguments:
  x, y, z = 1,
  # This is the splat argument:
  *args,
  # These are the named arguments:
  a, b, c = 2,
  # This is the double splat argument:
  **options
)
end

# method call
foo(
  # These are positional arguments
  1, 2,
  # These are named arguments
  a: 1, b: 2
)

# internal versus external name
def plan(begin begin_time, end end_time)
  puts "Planning an event from #{begin_time} to #{end_time}."
end

plan begin: Time.now, end: 2.days.from_now

def increment(value, by amount)
  value + amount
end

puts increment 1, by: 2
