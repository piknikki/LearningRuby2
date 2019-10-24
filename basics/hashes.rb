hash = { "item" => "Bread", "quantity" => 1, "brand" => "Crazy Daves" }

puts "Hash Original: #{hash.inspect}"
puts "Hash length:  #{hash.length} "
puts "Hash invert:  #{hash.invert} "

puts "Hash shift:  #{hash.shift.inspect} "
puts hash.inspect

hash["item"] = "bread"
puts hash.inspect

merged_hash = hash.merge({ 'calories' => 100 })
puts merged_hash.inspect
puts hash.inspect

new_merged_hash = hash.merge({ 'item' => "eggs"})
puts "Hash merge with existing key:  #{new_merged_hash.inspect})} "  # this will overwrite the existing value
puts hash.inspect
