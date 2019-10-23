
business = { "name" => "Granicus", "location" => "Denver"}

#  can also use each_pair
# business.each do |key, value|
#   puts "#{key} is #{value}"
# end

# business.each_key do |key|
#   puts key
# end

business.each_value do |value|
  puts value
end