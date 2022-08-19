class Person
    def initialize(name, age, cmnd)
        @name = name
        @age = age
        @cmnd = cmnd
    end

    def getName 
        @name
    end
    def setName=(newName)
        @name = newName
    end

    def getAge 
        @age
    end
    def setAge=(newAge)
        @age = newAge
    end

    def getCmnd
        @cmnd
    end
    def setCmnd=(newCmnd)
        @cmnd = newCmnd
    end
end

class Customer < Person
    def initialize(name, age, cmnd, days, type, num)
        super(name, age, cmnd)
        @days = days
        @type = type
        @num = num
    end

    def getDays
        @days
    end
    def setDays=(newDays)
        @days = newDays
    end

    def getType
        @type
    end
    def setType=(newType)
        @type = newType
    end

    def getNum
        @num
    end
    def setNum=(newNum)
        @num = newNum
    end

    def display_details()
        puts "Name: #@name"
        puts "Age: #@age"
        puts "CMND: #@CMND"
        puts "Days: #@days"
        puts "Type: #@type"
        puts "Num: #@num \n "
    end
end

class Room
    def initialize(num, type, price)
        @num = num
        @type = type
        @price = price
        @status = "free"
    end

    def getNum
        @num
    end
    def setNum=(newNum)
        @num = newNum
    end

    def getType
        @type
    end
    def setType=(newType)
        @type = newType
    end

    def getPrice 
        @price
    end
    def setPrice=(newPrice)
        @price = newPrice
    end

    def getStatus
        @status
    end
    def setStatus=(newStatus)
        @status = newStatus
    end

    def display_details()
        puts "Number: #@num"
        puts "Type: #@type"
        puts "Price: #@price"
        puts "Status: #@status\n "
    end
end

class RoomHotel
    def initialize()
        r101 = {"101" => Room.new("101", "A", "500$")}
        r102 = {"102" => Room.new("102", "A", "500$")}
        r103 = {"103" => Room.new("103", "A", "500$")}
        r201 = {"201" => Room.new("201", "B", "300$")}
        r202 = {"202" => Room.new("202", "B", "300$")}
        r203 = {"203" => Room.new("203", "B", "300$")}
        r301 = {"301" => Room.new("301", "C", "100$")}
        r302 = {"302" => Room.new("302", "C", "100$")}
        r303 = {"303" => Room.new("303", "C", "100$")}
        @data = []
        # @data = [r101, r102, r103, r201, r202, r203, r301, r302, r303]
        @data.append(r101)
        @data.append(r102)
        @data.append(r103)
        @data.append(r201)
        @data.append(r202)
        @data.append(r203)
        @data.append(r301)
        @data.append(r302)
        @data.append(r303)
    end

    def getData
        @data
    end

    def checkRoom(number) 
        case number
        when "101"
            return 0
        when "102"
            return 1
        when "103"
            return 2
        when "201"
            return 3
        when "202"
            return 4
        when "203"
            return 5
        when "301"
            return 6
        when "302"
            return 7
        when "303"
            return 8
        when "All"
            return 100
        else
            return -1
        end
    end

    def display_details(number)
        index = checkRoom(number)
        puts index
        if (index == -1)
            puts "Don't have room #{number}\n "
        elsif (index == 100)
            i = 0
            puts @data.length()
            while i < @data.length()
                @data[i][@data[i].keys[0]].display_details()
                i += 1
            end
        else
            @data[index][number].display_details()
        end
    end
end

class Hotel
    def initialize()
        @data = {"Room" => RoomHotel.new(), "Customer" => []}
    end
    
    def addCus(name, age, cmnd, days, type, num)
        index = @data["Room"].checkRoom(num)
        if (index != -1 && index != 100) 
            if (@data["Room"].getData[index][num].getStatus == "free") 
                newCustomer = Customer.new(name, age, cmnd, days, type, num)
                @data["Customer"].append(newCustomer)
                @data["Room"].getData[index][num].setStatus = "busy"
                puts "Add successful customer with cmnd: #{cmnd}"
            else
                puts "Room #{num} is busy. "
            end
        else
            puts "There don't have room #{num}. Please try to choose other room!!!"
        end
    end

    def searchCus(cmnd)
        i = 0
        while i < @data["Customer"].length()
            if (@data["Customer"][i].getCmnd == cmnd)
                return i
            end
        end
        return -1
    end

    def removeCus(cmnd)
        index = searchCus(cmnd)
        if (index == -1)
            puts "Don't have customer with cmnd: #{cmnd}"
        else
            num = @data["Customer"][index].getNum
            @data["Customer"].delete(@data["Customer"][index])
            index = @data["Room"].checkRoom(num)
            if (index != -1 && index != 100)
                @data["Room"].getData[index][num].setStatus("free")
            end
            puts "Removed successful customer with cmnd: #{cmnd} \n"
        end
    end

    def display_details(type)
        case type
        when "Room"
            @data[type].display_details("All")
        when "Customer"
            i = 0
            while i < @data[type].length()
                @data[type][i].display_details()
                i += 1
            end
        end
        
    end

    def run
        while(true)
            puts "Options: "
            puts "1. Add"
            puts "2. Remove"
            puts "3. Search"
            puts "4. Show"
            puts "Other: Exit"
            print("Your choose: ")
            
            option = gets.chomp
            case option
            when "1"
                puts "Name: "
                name = gets.chomp()
                puts "Age: "
                age = gets.chomp()
                puts "CMND: "
                cmnd = gets.chomp()
                puts "Days: "
                days = gets.chomp()
                puts "Type: "
                type = gets.chomp()
                puts "Number: "
                num = gets.chomp()
                addCus(name, age, cmnd, days, type, num)
            when "2"
                puts "CMND: "
                cmnd = gets.chomp()
                removeCus(cmnd)
                puts "Remove successful with #{cmnd}"
            when "4"
                puts "Type: "
                type = gets.chomp()
                display_details(type)
            else 
                puts "Exit"
                return
            end
        end
    end
end

hotel = Hotel.new()

hotel.run

# roomhotel = RoomHotel.new()
# roomhotel.display_details("101")