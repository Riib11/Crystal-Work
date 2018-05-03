to_s = ->(x : Int32) { x.to_s }

puts (to_s.call 3)

# a function that returns 1
def one
  1
end

proc = ->one
puts proc.call

proc1 = one
puts proc1
