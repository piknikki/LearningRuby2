loop do
  print "do you want to continue? (y/n) "
  answer = gets.chomp.downcase
  if answer == "n"
    break
  end
  if answer == "y"
    print "ok " * 3 + "\n"
    break
  end
end