# union types
alias Int32orString = Int32 | String

alias Int32orNil = Int32 | Nil
Int32?

alias Int32Pointer = Int32*
Pointer(Int32)

# static array
alias Int32_8 = Int32[8]
StaticArray(Int32, 8)

# tuple
alias Int32xString = {Int32, String}
Tuple(Int32, String)

# named-tuple
alias Int32xString_named = {x: Int32, y: String}

# proc
alias Int32toString = Int32 -> String
Proc(Int32, String)

# proc without input
alias ToInt = -> Int32

# multiple inputs
alias Int32xChartoString = Int32, Char -> String

# complex proc
alias ComplexProc = (Int32 -> Int32) -> String

def foo(x : Int32)
  "instance"
end

def foo(x : Int32.class)
  "class"
end

puts (foo 1), (foo Int32)

# class
class Parent
end

class Child1 < Parent
end

class Child2 < Parent
end

arr = [] of Parent.class
arr << Child1
arr << Child2
puts arr
