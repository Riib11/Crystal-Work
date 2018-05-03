class Counter
  @@instances = 0

  def initialize
    @@instances += 1
  end

  def self.instances
    @@instances
  end
end

puts Counter.instances
Counter.new
Counter.new
Counter.new
Counter.new
puts Counter.instances
