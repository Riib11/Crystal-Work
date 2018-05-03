# pointerof
# UNSAFE

a = 1
ptr = pointerof(a)
ptr.value = 2
puts a

# sizeof
# gets the size of storage of type
puts sizeof(Int32)

class MyClass
  property name : String, age : Int32

  def initialize(@name, @age)
  end
end

puts "sizeof(MyClass) = #{sizeof(MyClass)}"
puts "sizeof(MyClass*) = #{sizeof(MyClass*)}"

# instance_sizeof
# get the instance size of a type

MyClass.new "Henry", 19
MyClass.new "Sally", 21

puts "instance_sizeof(MyClass) = #{instance_sizeof(MyClass)}"
