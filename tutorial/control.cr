a = 1 if true
b = 2 if false
c = true ? 3 : 4

puts a
puts b
puts c

d = true ? 3 : nil
if d
  puts d.abs
end

if a.is_a?(String)
  puts "a is a string!"
end

if a.is_a?(Number)
  puts "a is a number!"
end

if b.nil?
  puts "b is nil :("
end

while false
  puts 10
end

i = 1
loop do
  puts i
  i += 1
  break if i > 3
end

i = 1
until i == 3
  puts i
  i += 1
end
