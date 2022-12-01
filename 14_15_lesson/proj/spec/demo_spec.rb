require_relative '../demo'

# describe - содержит в себе набор тестов (в блоках it, specify)
RSpec.describe Demo do
  let(:obj) { puts 'obj created!' ; described_class.new(100) }

  specify '#my_arr' do
    puts obj.val
    #obj = described_class.new
    expect(obj.my_arr).to include(2)
    obj.val = 1
  end

  specify '#calc' do
    puts obj.val
    #obj = described_class.new
    expect(obj.calc(2, 3)).to eq(6)
    expect(obj).to be_an_instance_of(described_class)
    # expect(obj.class).to eq(described_class)
  end
  # #my_method -- instance (метод образца класса)
  # .my_method -- class method
  specify '.run' do
    # puts "My class is #{described_class.inspect}"
    # вот тут мы записываем сам тест!
    result = described_class.run
    # if result == 42
    #   puts 'ok'
    # else
    #   raise 'not okay, value should be 42'
    # end
    expect(result).to eq(42)
  end
end