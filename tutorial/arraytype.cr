arr = [1, 2, "hello"] of (Int32 | String)
puts arr.to_s

# needs type specification
empty_arr = [] of UInt32
puts empty_arr.to_s
