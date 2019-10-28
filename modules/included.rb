module Fetcher

  def self.included(klass) # self means it's a class method and that class is the argument
    puts '#{klass} has been included'
    attr_accessor :fetch_count
  end

  def fetch(item)
    @fetch_count ||= 0
    @fetch_count += 1
    puts "I'll bring [#{@fetch_count}] #{item}."
  end
end

class Dog
  include Fetcher
  def initialize(name)
    @name = name
  end
end



jake = Dog.new("Jake")
jake.fetch("donut")
jake.fetch("card wars")