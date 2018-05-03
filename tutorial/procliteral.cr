def some_proc(&block : Int32 -> Int32)
  block
end

x = 0
proc = ->(i : Int32) { x += i }
proc = some_proc(&proc)
puts "f(1) = #{proc.call(1)}"
puts "f(10) = #{proc.call(10)}"
puts "x = #{x}"

# and can do

def add(x, y)
  x + y
end

puts ->add(Int32, Int32).class
adder = ->add(Int32, Int32)
puts "1 + 2 = #{adder.call(1, 2)}"
