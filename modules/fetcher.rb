module Fetcher
  def fetch(item)
    puts "I am #{@name} and I will get #{item}."
  end
end

class Dog
  include Fetcher
  def initialize(name)
    @name = name
  end
end

class Cat
  include Fetcher
  def initialize(name)
    @name = name
  end
end

jake = Dog.new("Jake")
jake.fetch("donut")

tinsel = Cat.new("Tinsel")
tinsel.fetch("catnip donut")