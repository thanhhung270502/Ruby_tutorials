months = Hash.new
months = {1 => "January", 2 => "February", 3 => "March", 4 => "April"}
puts "#{months[1]}\n "

# Hash.delete(index)
months.delete(months.keys[0])

# Hash.delete_if 
months.delete_if { |key, value|
    key == 3
}
# puts "#{months}"
# Hash.each
months.each{ |key, value|
    puts "key = #{key}, value = #{value}"
}

# Hash.keys / Hash.values => Array
puts "#{months.keys}\n "
puts "#{months.values}\n "

# Empty
if (months.empty?)
    puts "True\n "
else
    puts "False\n "
end

# Merge
h1 = { "a" => 100, "b" => 200 }
h2 = { "b" => 300, "c" => 400 }
h3 = h1.merge(h2) # If key is the same, value will get new value

puts "#{h3}"

# select
h4 = h3.select{ |key, value|
    key > "a"
    value > 200
}
puts "#{h4}"