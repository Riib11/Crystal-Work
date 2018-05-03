# can get the type and value of argument
def foo(x : T) forall T
  puts "got value " + x.to_s + " of type " + T.to_s
end

foo(10.0)

def bar(x : Array(T)) forall T
  puts "got array " + x.to_s + " of type " + T.to_s
end

bar([1, 'a'])

# can output types

def makeArrayType(x : T.class) forall T
  Array(T)
end

puts makeArrayType Int32

def makeUnionType(a : T.class, b : S.class) forall T, S
  (T | S)
end

puts makeUnionType(Int32, String)
puts makeUnionType(Int32, Int32)
