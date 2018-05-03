# Link
# links to a C library

@[Link("pcre")]
lib LibPCRE
end

# Extern

@[Extern]
struct MyStruct
end

lib MyLib
  fun my_func(s : MyStruct) # can use since Extern
end

# act like C union (pretty unsafe)
@[Extern(union: true)]
struct Int32orChar
  property int = 0
  property char = '\0'
end

s = Int32orChar.new
s.char = 'A'
puts s.int # outputs int of char
s.int = 66
puts s.char

# ThreadLocal
# can be applied ot class variables and C external variables

class DontUseThis
  # one for eahc thread
  @[ThreadLocal]
  @@values = [] of Int32
end

# Inline

@[AlwaysInline]
def foo
  1
end

@[NoInline]
def foo
  1
end

# ReturnsTwice

@[ReturnsTwice]
def foo
  return 1
  return 2
end

# Raises

@[Raises]
def unsafe_div(x : Int32, y : Int32)
  case y
  when 0
    raise "Can't divide by zero!"
  else
    x / y
  end
end

puts unsafe_div 1, 1
puts unsafe_div 1, 0
