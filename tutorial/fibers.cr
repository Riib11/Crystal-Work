# spawn do
#   loop do
#     puts "hello!"
#   end
# end
# sleep (0.1).seconds

i = 0
while i < 10
  spawn puts("fiber1: #{i}")
  i += 1
end

10.times do |j|
  spawn do
    puts "fiber2: #{j}"
  end
end

Fiber.yield
