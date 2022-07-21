a = 10
b = 20

# Ruby Arithmetic Operators
addition = a + b
subtraction = a - b
multiplication = a * b
division = a / b
modulas = a % b
exponent = a ** b

puts "#{addition} #{subtraction} #{multiplication} #{division} #{modulas} #{exponent}"

# Ruby Comparison Operators

if (a == b) 
    puts "True"
else 
    puts "False"
end

if (a != b) 
    puts "True"
else 
    puts "False"
end

if (a > b) 
    puts "True"
else 
    puts "False"
end

if (a < b) 
    puts "True"
else 
    puts "False"
end

if (a >= b) 
    puts "True"
else 
    puts "False"
end

if (a <= b) 
    puts "True"
else 
    puts "False"
end

var1 = a <=> b
puts var1

if ((1...10) === 5) 
    puts "True"
else 
    puts "False"
end

if (1.eql? 1.0) 
    puts "True"
else 
    puts "False"
end

c = a.dup
if ((a == c) && (a === c) && (a.eql? c))
    puts "True"
end
if (a.equal? c)
    puts "False" 
end

# Ruby Parallel Assignment
d, e, f = 10,20,30
puts "#{d} #{e} #{f}"
g, h = e, f
puts "#{g} #{h}"

# Ruby Bitwise Operators
a = 60              # => 0011 1100
b = 13              # => 0000 1101
puts "#{a&b}"       # => 0000 1100
puts "#{a|b}"       # => 0011 1101
puts "#{a^b}"       # => 0011 0001
puts "#{~a}"        # => 1100 0011
puts "#{a << 2}"    # => 1111 0000 : Left Shift
puts "#{a >> 2}"    # => 0000 1111 : Right Shift

## Ruby Logical Operators
if (a and b)
    puts "True"
end
if (a or b)
    puts "True"
end
if (a && b)
    puts "True"
end
if (a || b) 
    puts "True"
end
if (!a)
    puts "False"
end
if (not(a && b))
    puts "True"
else
    puts "False"
end

## Ruby Range Operators
(1..10).each{|i| puts i} # => 1, 2, 3, ... 10
(1...10).each{|i| puts i} # => 1, 2, 3, ... 9

MR_COUNT = 0         # constant defined on main Object class
module Foo
   MR_COUNT = 0
   ::MR_COUNT = 1    # set global count to 1
   MR_COUNT = 2      # set local count to 2
end
puts MR_COUNT        # this is the global constant
puts Foo::MR_COUNT   # this is the local "Foo" constant
