# raise "OH NO!"
# raise Exception.new("Some error")

def f(x : Int32)
  x + 1
end

def g
  f(10)
end

puts typeof(->f(Int32))
puts typeof(->g)
puts typeof(->(x : Int32) { x + 1 })
