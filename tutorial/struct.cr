# differences between structs and classes:
# - invoking `new` on a struct allocated it on the stack rather than on the heap
# - structs are passed by value while classes are passed by reference
# - structs inherit from Struct < Value, while classes inherit from Reference
# - a struct cannot inherit a non-abstract struct // so can allocated specific amount of mem to a struct

struct Point
  property x, y

  def initialize(@x : Int32, @y : Int32)
  end
end

arr = [] of Point # array buffer will have 8 bytes dedicated to each point
