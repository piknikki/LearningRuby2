grocery_list = ["milk", "eggs"]
grocery_list << "carrots" # adds to end
grocery_list.push "potatoes"  # adds to end
grocery_list.unshift "celery" # adds to beginning
grocery_list += ["ice cream", "pie"]

# puts grocery_list.inspect
# puts grocery_list[2]
# puts grocery_list.first
# puts grocery_list.last
# puts grocery_list[-1]
# puts grocery_list.insert(3, "oatmeal")
# puts grocery_list.inspect
# puts grocery_list.include?("oatmeal")
# puts grocery_list.include?("chocolate")

# puts grocery_list.inspect
# puts grocery_list.pop.inspect
# puts grocery_list.inspect
# puts grocery_list.shift
puts grocery_list.inspect

drop_two = grocery_list.drop(2)

puts grocery_list.inspect
puts drop_two.inspect