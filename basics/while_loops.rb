# answer = ""
# while answer != "n"
#   print "do you want me to repeat? (y/n) "
#   answer = gets.chomp.downcase
# end
#
def print_hello(number_of_times)
  i = 0
  while i < number_of_times
    puts "hello"
    i += 1
  end
end

answer = 0

while answer < 5
  print "how many times? (enter a number greater than 5 to exit) "
  answer = gets.chomp.to_i
  print_hello(answer)
end