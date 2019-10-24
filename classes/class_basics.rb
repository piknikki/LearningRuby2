# class MyClass
#   def initialize
#     puts "this is the initialize method"
#   end
# end
#
# MyClass.new  #  instantiation of the class created above
#
class Name
  attr_accessor :title, :first_name, :middle_name, :last_name


  def initialize(title, first_name, middle_name, last_name)
    @title = title
    @first_name = first_name
    @middle_name = middle_name
    @last_name = last_name
  end

  def full_name
    @first_name + " " + @middle_name + " " + @last_name
  end

  def with_title
    @title + " " + full_name
  end

  def to_s
    with_title
  end

end

nikki = Name.new("Ms.", "Nikki", "Anne", "Petersen")
puts nikki.with_title

finn = Name.new("Mr.", "Finn", "The", "Human")
puts finn.with_title

puts nikki
puts nikki.inspect