  # shopping list
  #
def create_list
  print "what is the list name?  "
  name = gets.chomp  # this gets the input from user

  hash = { "name" => name, "items" => Array.new }
  return hash  # this will return the hash created using the name and items array
end

def add_list_item
  print "what is the item called?  "
  item_name = gets.chomp

  print "how many would you like?  "
  quantity = gets.chomp.to_i

  hash = { "name" => item_name, "quantity" => quantity }
  return hash
end

def print_separator(character="-")
  puts character * 80
end

def print_list(list)
  puts "List: #{list['name']}"
  print_separator()

  list["items"].each do |item|
    puts "\tItem: " + item['name'] + "\t\t\t" +
     "Quantity: " + item['quantity'].to_s
  end
  print_separator()
end

list = create_list()  # this runs the function right now

puts "Great! Add some items to your list."

list['items'].push(add_list_item())
list['items'].push(add_list_item())
list['items'].push(add_list_item())

puts "Here's your list:\n"

print_list(list)