# puts "hello world"
# puts 1, 2, "a", "b" # prints each on different lines
# sleep 2
# print "c", "d" # will stay on same line
# sleep 1
#

def ask(question)
  # answer = gets
  # puts answer
  # gets   # this will return gets
  print question  + "  "
  gets.chomp
end

def price(quantity)
  if quantity >= 100
    price_per_unit = 1
  elsif quantity >= 50
    price_per_unit = 3
  else
    price_per_unit = 10
  end

  quantity * price_per_unit
end

puts ""
puts "Welcome to the widgets store!"
answer = ask("How many widgets are you ordering?")
number = answer.to_i
total = price(number)
puts "For #{answer} widgets, your total is $#{total}."