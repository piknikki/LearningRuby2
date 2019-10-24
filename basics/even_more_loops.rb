def get_name
  name = ""
  loop do
    print "Enter your name (minimum 2 characters, no numbers): "
    name = gets.chomp
    if name.length >= 2 && !name.index(/\d/)
      break
    else
      puts "please enter more than 2 characters"
    end
  end
  return name
end

name = get_name()
puts "Thanks, #{name}"