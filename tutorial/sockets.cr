require "socket"

channel = Channel(String).new

spawn do
  server = TCPServer.new("0.0.0.0", 8080)
  socket = server.accept
  while line = socket.gets
    channel.send(line)
  end
end

spawn do
  while line = gets
    channel.send(line)
  end
end

3.times do
  puts "enter a thing:"
  puts channel.receive
end

# wait for multiple fibers to complete

channel2 = Channel(Int32).new

10.times do |i|
  spawn do
    channel2.send(i * 2)
  end
end

sum = 0
10.times do
  sum += channel2.receive
end

puts sum
