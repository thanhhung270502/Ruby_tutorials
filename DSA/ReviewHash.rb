h1 = {:a => 100, :b => 200}
h2 = {:b => 300, :c => 400}
h1[:a] = 500
puts "#{h1}"
puts "#{h1[:a]}"
h3 = Hash.new("c")
puts "#{h3[1]}"