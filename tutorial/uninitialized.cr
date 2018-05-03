x = uninitialized Int32
puts x # not same! uses some random value

# can be uesd for declaring uninitialized StaticArray buffers without a performance penalty
buffer = uninitialized UInt8[256]
