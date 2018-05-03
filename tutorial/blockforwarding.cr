def capture(&block : -> Int32)
  block
end

def invoke(&block)
  block.call
end

proc = capture { 100 }
puts invoke(&proc)

# can pass a proc to a metheod that yields

def other_capture(&block)
  block
end

def twice
  yield
  yield
end

proc = other_capture { puts "Hello!" }
twice do
  proc.call
end

def goodbye
  puts "Goodbye!"
end

proc = ->goodbye
twice do
  proc.call
end

# or

twice &->{ puts "Hello!" }

# or

twice &->goodbye

# forwarding non-captured blocks

def foo
  yield 1
end

def wrap_foo
  puts "Before foo"
  foo do |x|
    yield x
  end
  puts "After foo"
end

wrap_foo do |i|
  puts i
end
