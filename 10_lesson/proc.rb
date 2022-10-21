p = Proc.new do |a, b|
  result = a + b
  puts "hello from proc! #{result}"
  result
end

p2 = proc {|str| puts str.upcase }

def caller(my_proc, my_proc2)
  # my_proc.call(10, 20)
  # my_proc2.call("hello from caller!")
  yield(my_proc, my_proc2)
end

caller(p, p2) do |proc1, proc2|
  proc1.call(10, 20)
  proc2.call("hello from caller!")
  #puts "block passed to caller!"
end

# final_result = p.call(10, 20)
# puts final_result
# p2.call("my string!")