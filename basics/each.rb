array = %w(a b c d)

# i = 0
# while i < array.length
#   item = array[i]  # item is the value at that index
#   puts "the current item is #{item}."
#   i += 1
# end
#
# array.each do |item|
#   puts "the current item is #{item}."
#
# end
#
array.each { |item| puts "the current item is #{item}." }