names = Array.new(20)
puts names.size  # This returns 20
puts names.length # This also returns 20

names = Array.new(4, "mac")
puts "#{names}\n "

nums = Array.new(10) { |e| e = e * 3 }
puts "#{nums}\n "

nums = Array.[](1, 2, 3, 4, 5)
puts "#{nums}\n "

digits = Array(0..9)
puts "#{digits}\n "

digits = Array(0..9)
num = digits.at(6)
num2 = digits[6]
puts "#{num}"
puts "#{num2}\n "

a = [ "a", "b", "c" ]
n = [ 65, 66, 67 ]
puts a.pack("A3A3A3")   
puts a.pack("a3a3a3")   
puts n.pack("ccc")  
puts n.pack("qqq")  
puts n.pack("sss")  
