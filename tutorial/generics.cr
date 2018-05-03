# generics allow to parameterize a type based on another type

class MyBox(T)
  def initialize(@value : T)
  end

  def value
    @value
  end
end

int_box = MyBox(Int32).new 10
string_box = MyBox(String).new "string"

# another_box = MyBox(String).new 1 # no, since 1 is not a String

class MyDictionary(K, V)
end

# variable inference

another_int_box = MyBox.new 10 # inferes MyBox(Int32)
puts another_int_box

class Vector2(T)
  getter x, y

  def initialize(@x : T, @y : T)
  end

  def +(v : Vector2(T)) : Vector2(T)
    Vector2.new @x + v.x, @y + v.y
  end
end

v1 = Vector2.new 1, 0
v2 = Vector2.new 0, 1
v3 = v1 + v2

puts "[#{v3.x},#{v3.y}]"

# generic structs and modules

module Moo(T)
  def t
    T
  end
end

class Foo(U)
  include Moo(U)

  def initialize(@value : U)
  end
end

foo = Foo.new 1
puts foo.t

# generic types inheritance

class Parent(T)
end

class Int32Child < Parent(Int32)
end

class GenericChild(T) < Parent(T)
end
