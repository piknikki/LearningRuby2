class MyArray
  attr_reader :array
  def initialize
    @array = []
  end

  def push(item)
    array.push(item)
  end

  def each(&block)
    i = 0
    while i < array.length
      block.call(array[i])  #call the block on the current array item
      i += 1
    end
  end
end

my_array = MyArray.new
my_array.push(1)
my_array.push(3)
my_array.push(2)


# this is the block
my_array.each{ |item| puts "item: #{item}" }