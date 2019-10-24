def get_name
  print "Enter your name: "
  name = gets.chomp
  yield name
  name
end

# get_name do |name|
#   puts "that's a cool name, #{name}!"
# end

my_name = get_name do |any_arg_will_do|  # still taking name as argument -- can name it anything you want
  puts "that's a cool name, #{any_arg_will_do}!"
end

puts "my_name: #{my_name}"