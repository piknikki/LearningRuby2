module Tracking
  def create(name)
    object = new(name) # this calls the initialize method on the class it was called into
    instances.push(object)  # this puts it into the array
    return object
  end

  def instances
    @instances ||= []  # this is a conditional thing, where if we haven't accessed it before, it's empty

  end

  def find(name)
    instances.find do |instance|
      instance.name == name
    end
  end
end

class Customer
  extend Tracking
  attr_accessor :name

  def initialize(name)
    @name = name
  end

  def to_s
    "[#{@name}]"
  end
end


Customer.create"Marceline"
Customer.create "LSP"
Customer.create "Bubblegum"

puts Customer.instances.inspect

puts "Customer.find('LSP'): %s" % Customer.find("LSP")
puts "Customer.find('mike'): %s" % Customer.find("mike")
