begin
  raise "OH NO!"
rescue
  puts "Fwew, Rescued!"
else
  puts "Exception not raised."
ensure
  puts "Cleanup..."
end
