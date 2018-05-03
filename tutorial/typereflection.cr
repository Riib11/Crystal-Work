puts 1.is_a?(Int32)
puts 1.nil?
puts 1.responds_to?(:abs)

one_as_int = 1.as(Int32)
# hello_as_int = "hello".as(Int23) # raises exception, or can compile-time error

array = [1, 2, 3]

# object_id returns the address of an object in memory,
# so we create a pointer with that address
ptr = Pointer(Void).new(array.object_id)

# Now we cast that pointer to the same type, and
# we should get the same value
array2 = ptr.as(Array(Int32))
array2.same?(array) # => true

# `as` to a bigger type

a = 1
b = a.as(Int32 | Int64)
puts b.class

arr1 = [1, 2, 3]
arr2 = arr1.map { |x| x.as(Int32 | Float64) }
puts arr2
puts arr2.class
