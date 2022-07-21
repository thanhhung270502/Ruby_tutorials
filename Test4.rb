# if <condition> ... elsif <condition2> ... else ...
x = 1
if x > 2
    puts "x is greater than 2"
elsif x <= 2 and x!=0
    puts "x is 1"
else
    puts "I can't guess the number"
end

# code if <condition>
print "debug\n" if x

# unless
unless x >= 2
    puts "x is less than 2"
 else
    puts "x is greater than 2"
end

# case when
ex = 3
case ex
when 1..4
    puts "Yeu"
when 5,6
    puts "Trung binh"
when 7,8
    puts "Kha"
when 9,10
    puts "Gioi"
end

