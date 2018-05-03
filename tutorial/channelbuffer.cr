# A buffered channel of capacity 2
channel = Channel(Int32).new(2)

# send doesn't make switch to another fiber (for concurrent execution)
# unless buffer is full on the target channel

spawn do
  puts "Before send 1"
  channel.send(1)
  puts "Before send 2"
  channel.send(2)
  puts "Before send 3"
  channel.send(3)
  puts "After send"
end

3.times do |i|
  puts channel.receive
end
