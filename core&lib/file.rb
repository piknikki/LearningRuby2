File.open("example.txt", "a+") do |file|
  print "Enter your name: "
  name = gets.chomp

  file.puts "Name: #{name}"
end