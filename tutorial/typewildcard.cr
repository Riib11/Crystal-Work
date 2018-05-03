def foo(x : _)
end

def foo(x : _, _ -> Int32)
  puts x
end

def f(x, y)
  1
end

x = foo ->(x : Int32, y : Int32) { 1 }

puts typeof(x, Int32)
