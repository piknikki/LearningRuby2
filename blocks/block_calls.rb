# def get_name(prompt, &block) # idk wtf this is doing
#   print prompt + ": "
#   name = gets.chomp
#   print "Age: "
#   age = gets.chomp
#   block.call name, age if block_given?
#   name
# end
#
# my_name = get_name("Enter your name") do |your_name, age|
#   puts "that's cool, #{your_name}, you are #{age}"
# end
#
# puts "my_name: #{my_name}"
#
def get_name(prompt, &block) # idk wtf this is doing
  if block_given?
    print prompt + ": "
    name = gets.chomp
    print "Age: "
    age = gets.chomp
    block.call name, age if block_given?
    name
  else
    puts "no block given"
  end

end

my_name = get_name("Enter your name") do |your_name, age|
  puts "that's cool, #{your_name}, you are #{age}"
end

puts "my_name: #{my_name}"

# other block stuff
#   string.each_char{ |letter| print "#{letter}."}
#   haiku.each_line{|line| puts "* #{line}" }
#   5.downto(0) { |number| print "#{number}..."}
#   array.each {|i| print "..#{i}.."}
#   array.select {|i| i > 2}   # like filter. returns an array.
#   array.reject {|i| i > 5}
#   array.reject {|i| i % 2 == 0}
#   array.count {|i| i % 2 == 0}
#   hash.each_key {|k| puts k}
#   hash.each_value {|v| puts v}  each_pair
#   hash.keep_if { |key, value| key == "name"}
#   hash.reject { |key, value| key == "name"}