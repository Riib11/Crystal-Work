def foo(x : Int32.class)
  puts "got Int32"
end

def foo(x : String.class)
  puts "got String"
end

foo Int32
foo String
