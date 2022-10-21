def method1(arg1, &block)
  # method2(&block)
  # yield
  # block.call
  puts block.inspect
end

def method2(&block)
  # чтобы yield, сделанный вот тут выводил на экран "hello from method1!"
  block.call
  block.call
end

method1(100) do 
  puts "hello from method1!"
end