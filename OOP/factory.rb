class CanBo
    @@count = 0
    def initialize(name, age, gender, address)
        @@count += 1
        @id = @@count
        @name = name
        @age = age
        @gender = gender
        @address = address
    end

    # GETTER & SETTER
    def getID
        @@id
    end

    def getName
        @name
    end
    def setName(newName)
        @name = newName
    end

    def getAge
        @age
    end
    def setAge(newage)
        @age = newage
    end

    def getGender
        @gender
    end
    def setGender(newgender)
        @gender = newgender
    end

    def getAddress
        @address
    end
    def setAddress(newaddress)
        @address = newaddress
    end

    def display_details()
        puts "ID = #@id"
        puts "Name = #@name"
        puts "Age = #@age"
        puts "Gender = #@gender"
        puts "Address = #@address \n "
    end
end

class CongNhan < CanBo
    def initialize(name, age, gender, address, level)
        super(name, age, gender, address)
        @level = level
    end

    def display_details()
        # puts "ID = #@id"
        print("ID = ", @id, "\n ")
        puts "Name = #@name"
        puts "Age = #@age"
        puts "Gender = #@gender"
        puts "Address = #@address"
        puts "Job = Cong nhan & Level = #@level \n "
    end
end

class QLCB
    
end


canboT = CanBo.new("Thanh", 18, "Male", "BK")
congnhanT = CongNhan.new("Hung", 18, "Male", "BK", 2)

canboT.display_details()
congnhanT.display_details()
