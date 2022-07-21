val1 = "This is variable one"
val2 = "This is variable two"
puts val1
puts val2

puts "Enter a value :"
val = gets.chomp
puts val

str = "Hello Ruby!"
putc str

file = File.new("Infor.txt", "r")
if file
    content = file.sysread(20)
    puts content
else
    puts "Unable to open file!"
end

arr = IO.readlines("Infor.txt")
i = 0
while i < arr.length
    puts arr[i]
    i += 1
end