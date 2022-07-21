puts "While ..."
i = 0
num = 5
while i < num do
    puts "i = #{i}"
    i += 1
end

puts "begin ... end while"
i = 0
begin
    puts "i = #{i}" 
    i += 1
end while(i < num)

puts "until ... end"
i = 0
until i > num do
    puts "i = #{i}"
    i += 1
end

puts "begin ... end until"
i = 0
begin
    puts "i = #{i}"
    i += 1
end until i > num

puts "for in ..."
for i in 0..5
    if (i == 2)
        next
    end
    puts "i = #{i}"
    if (i == 4) 
        break
    end
end

puts "(expression).each do |var| ..."
(0..5).each{ |i|
    puts "i = #{i}"
}