class Foo
  def finalize
    puts "an instance of Foo is being garbage-collected"
    # don't create new objects in here!
  end
end

f = Foo.new
