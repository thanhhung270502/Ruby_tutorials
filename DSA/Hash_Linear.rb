class Linear_Hash
    attr_accessor :arr, :m, :c
    def initialize(m, c)
        @m = m 
        @c = c
        @arr = Array.new(@m)
    end

    def linear(k)
        h = k % @m 
        i = 0
        while (i != @m)
            hp = (h + @c*i) % @m 
            return hp if (arr[hp] == nil)
            i += 1
        end
        return -1
    end 
    
    def insert(key)
        index = linear(key)
        if (index == -1) 
            puts "List is full!!!"
        else
            @arr[index] = key
            puts "Successfully!!"
        end
    end

    def display_details()
        puts "------------------------------------------"
        for i in 0...@m 
            puts "arr[#{i}] = #{arr[i]}"
        end
        puts "------------------------------------------"
    end
end

a = Linear_Hash.new(19, 1)
a.insert(5)
a.insert(24)
a.display_details()