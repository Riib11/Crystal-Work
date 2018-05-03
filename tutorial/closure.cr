x = 0 # can modify
proc = ->{ x += 1 }
proc.call
proc.call
puts x

def counter
  x = 0
  ->{
    x += 1
    x
  }
end

proc = counter # returns proc
puts proc.call
puts proc.call
