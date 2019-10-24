# answer = ""
#
# until answer == "n" do
#   print "Do you want to keep looping? (y/n) "
#   answer = gets.chomp
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

#  can also leave off do if you want to
until answer >= 5 do
  print "Do you want to keep looping? (enter a number greater than 5 to exit) "
  answer = gets.chomp.to_i
  print_hello(answer)
end