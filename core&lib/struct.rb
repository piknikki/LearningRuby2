# class Customer
#   attr_accessor :name, :email
#
#   def initialize(name, email)
#     @name = name
#     @email = email
#   end
# end

# this one line does the same thing as the above
# Customer = Struct.new(:name, :email)
#

Customer = Struct.new(:name, :email) do
  def name_with_email
    "#{name} -- <#{email}>"
  end
end
customer = Customer.new"nikki", "nikki@nikki.com"
puts customer.inspect

puts customer.name_with_email

#  each of the attributes is passed to the each method as a block
customer.each_pair do |name, value|
  puts "#{name} -- #{value}"
end