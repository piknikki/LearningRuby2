random_number = Random.new.rand(5)

# loop do
#   print "guess the number between 0 and 5 (or e to exit): "
#   answer = gets.chomp.downcase
#   if answer == "e"
#     puts "the number was #{random_number}"
#     break
#   else
#     if answer.to_i == random_number
#       puts "You guessed it! Winner winner chicken dinner!"
#       break
#     else
#       puts "Nope. "
#     end
#   end
# end
#
# loop do
#   print "Enter a number greater than 10 to exit: "
#   answer = gets.chomp.to_i
#   if answer > 10
#     break
#   end
# end
#
loop do
  print "Enter a number greater than 10 to exit: "
  answer = gets.chomp.to_i
  break if answer > 10
end