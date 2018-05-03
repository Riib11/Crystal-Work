def foo
  yield
end

x = 1
foo do
  x = "hello"
end
puts "x = #{x} : #{x.class}"
