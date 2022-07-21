class MaTaiLieu
    def initialize(publisher, numRelease)
        @publisher = publisher
        @numRelease = numRelease
    end

    def getPublisher
        @publisher
    end
    def setPublisher=(newPublisher)
        @publisher = newPublisher
    end

    def getNumRelease
        @numRelease
    end
    def setNumRelease=(newNumRelease)
        @numRelease = newNumRelease
    end

    def display_details()
        print("Publisher: ", @publisher, "\n ")
        print("NumRelease: ", @numRelease, "\n ")
    end
end

class Sach < MaTaiLieu
    @@code = 10000
    def initialize(publisher, numRelease, author, numsPage)
        super(publisher, numRelease)
        @id = @@code
        @@code += 1
        @author = author
        @numsPage = numsPage
    end

    def getID
        @id
    end

    def getAuthor
        @author
    end
    def setAuthor=(newAuthor)
        @author = newAuthor
    end

    def getNumsPage
        @numsPage
    end
    def setNumsPage=(newNumsPage)
        @numsPage = newNumsPage
    end

    def display_details()
        print("ID: ", @id, "\n ")
        print("Publisher: ", @publisher, "\n ")
        print("NumRelease: ", @numRelease, "\n ")
        print("Author: ", @author, "\n ")
        print("NumsPage: ", @numsPage, "\n ")
    end
end

class TapChi < MaTaiLieu
    @@code = 20000
    def initialize(publisher, numRelease, idRelease, monthRelease)
        super(publisher, numRelease)
        @id = @@code
        @@code += 1
        @idRelease = idRelease
        @monthRelease = monthRelease
    end

    def getIdRelease
        @idRelease
    end
    def setIdRelease=(newIdRelease)
        @idRelease = newIdRelease
    end

    def getMonthRelease
        @monthRelease
    end
    def setMonthRelease=(newMonthRelease)
        @monthRelease = newMonthRelease
    end
    def display_details()
        print("ID: ", @id, "\n ")
        print("Publisher: ", @publisher, "\n ")
        print("NumRelease: ", @numRelease, "\n ")
        print("ID Release: ", @idRelease, "\n ")
        print("Month Release: ", @monthRelease, "\n ")
    end
end

class Bao < MaTaiLieu
    @@code = 30000
    def initialize(publisher, numRelease, dayRelease)
        super(publisher, numRelease)
        @id = @@code
        @@code += 1
        @dayRelease = dayRelease
    end

    def getDayRelease
        @dayRelease
    end
    def setDayRelease=(newDayRelease)
        @dayRelease = newDayRelease
    end

    def display_details()
        print("ID: ", @id, "\n ")
        print("Publisher: ", @publisher, "\n ")
        print("NumRelease: ", @numRelease, "\n ")
        print("Day Release: ", @dayRelease, "\n ")
    end
end

class QuanLySach
    def initialize()
        @data = {"Sach" => [], "TapChi" => [], "Bao" => []}
    end

    def add(type, publisher, numRelease, author = "", numsPage = 0, idRelease = 0, monthRelease = 0, dayRelease = 0)
        case type
        when "Sach"
            newSach = Sach.new(publisher, numRelease, author, numsPage)
            @data[type].append(newSach)
        when "TapChi"
            newTapChi = TapChi.new(publisher, numRelease, idRelease, monthRelease)
            @data[type].append(newTapChi)
        when "Bao"
            newBao = Bao.new(publisher, numRelease, dayRelease)
            @data[type].append(newBao)
        else
            puts "Don't have #{type}. Please try again"
        end
    end

    def searchID(id, type) 
        i = 0

        while i < @data["Sach"].length()
            if (@data[type][i].getID == id)
                return i
            end
            i += 1
        end

        return -1
    end

    def remove(id)
        type = ""

        if id >= 10000 && id < 20000
            type = "Sach"
        elsif id >= 20000 && id < 30000
            type = "TapChi"
        elsif id >= 30000 && id < 40000
            type = "Bao"
        else 
            print("Error ID \n ")
            return
        end

        index = searchID(id, type)
        if (index != -1)
            @data[type].delete(@data[type][index])
        else
            print("Don't have ID")
        end

    end

    def display_details(type)
        case type
        when "All"
            print("\n Sach: \n")
            i = 0
            while i < @data["Sach"].length()
                print(@data["Sach"][i].display_details())
                i += 1
            end

            print("\n Tap chi: \n ")
            i = 0
            while i < @data["TapChi"].length()
                print(@data["TapChi"][i].display_details())
                i += 1
            end

            print("\n Bao: \n ")
            i = 0
            while i < @data["Bao"].length()
                print(@data["Bao"][i].display_details())
                i += 1
            end
        else 
            print(type)
            i = 0
            while i < @data[type].length()
                print(@data[type][i].display_details())
                i += 1
            end
        end
    end

    def run 
        while(true)
            print("Options: \n ")
            print("1. Add \n")
            print("2. Remove \n")
            print("3. Search \n")
            print("4. Show \n")
            print("Other: Exit")
            print("Your choose: ")
            option = gets.chomp
            case option
            when "1"
                print("Enter your type want to add: ")
                type = gets.chomp
                print("Publisher: ")
                publisher = gets.chomp
                print("NumRelease: ")
                numRelease = gets.chomp
                case type
                when "Sach"
                    print("Author: ")
                    author = gets.chomp
                    print("NumsPage: ")
                    numsPage = gets.chomp
                    add(type, publisher, numRelease, author, numsPage)
                when "TapChi"
                    print("ID Release: ") 
                    idRelease = gets.chomp
                    print("Month Release: ")
                    monthRelease = gets.chomp
                    add(type, publisher, numRelease, "", 0, idRelease, monthRelease)
                when "Bao"
                    print("Day Release: ")
                    dayRelease = gets.chomp
                    add(type, publisher, numRelease, "", 0, 0, 0, dayRelease)
                else
                    print("Don't have type: #{type}")
                end
            when "2"
                print("Enter ID want to remove: ")
                id = gets.chomp
                remove(id)
            when "3"
                print("Enter your type want to search: ")
                type = gets.chomp
                print("Enter ID want to search: ")
                id = gets.chomp
                print(searchID(id, type))
            when "4"
                print("Enter your type want to show: ")
                type = gets.chomp
                display_details(type)
            else
                print("Exit")
                return
            end
        end
        
    end

end

quanli = QuanLySach.new()
# quanli.add("Sach", "Nha sach Phuong Nam", 1900, "Thanh Hung", 185)
# quanli.add("TapChi", "Nha sach Nam Phuong", 1980, 12, 8)
# # quanli.remove(10002)
# quanli.display_details("All")
quanli.run