# p = proc {|arg1| puts arg1.inspect}

# p.call()

# #l = ->(arg1) {puts "hello from lambda"}
# l = lambda {|arg1| puts arg1}
# l.call()

# def demo(obj)
#   puts "before obj call"
#   obj.call # внутри вызова произошёл return
#   puts "after obj call"
# end

p = proc do
  puts "I'm inside proc!"
  return 42
end

l = lambda do
  puts "I'm inside lambda!"
  return 42
end

puts l.inspect
puts p.inspect