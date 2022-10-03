class Sample
  def my_method(arg1, arg2, arg3 = :test, arg4 = :test2)
    puts arg1, arg2, arg3, arg4
  end

  def new_way(arg1:, arg2:, arg3: :test, arg4: 100)
    puts arg1, arg2, arg3, arg4
  end

  # poetry mode
  def poetry(num, h1, h2)
    puts num
    puts h.inspect
  end
end

s = Sample.new
# s.poetry 42, {first_hash: "hello"}, key1: 1, key2: "test", key3: "hello!"

# s.my_method(1, "test", 2, "hi")
# s.new_way(arg2: "hello!", arg1: "hi")

# h = {:key1 => 1, key2: "test", key3: "hello!"}