$levels = [2,3,1]  # => Global Variables
class Person
    @@count = 0  # => Class Variables
    BLACK = "#000"  # => Constant Variables
    def initialize(name, age, job)
        @id = @@count
        @@count += 1
        @name = name  # => Instance Variables
        @age = age
        @job = job
        @level = $levels[@id]
        @hair_color = BLACK
    end

    def display_details()
        a = "ID: "  # => Local Variables
        puts "#{a} #@id"
        puts "Name: #@name"
        puts "Age: #@age"
        puts "Job: #@job"
        puts "Level: #@level"
        puts "Hair color: #@hair_color"
    end
end

person1 = Person.new("Hung", 16, "Student")
person1.display_details()