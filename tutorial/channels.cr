# doesn't wait for fiber to complete

ch1 = Channel(Nil).new

spawn do
  puts "Before send"
  ch1.send(nil)
  puts "After send" # never printed
end

puts "Before received"
ch1.receive
puts "After received"

# waits for fiber to complete

ch2 = Channel(Int32).new

spawn do
  puts "Before first send"
  ch2.send 1
  puts "Before second send" # gets here!
  ch2.send 2
  puts "After second send" # never gets here
end

puts "Before first receive"
puts ch2.receive

puts "Before second receive"
puts ch2.receive
