class Node
    attr_accessor :data, :next
    def initialize(data, next_node = nil)
        @data = data
        @next = next_node
    end
end

class SingleLinkedList 
    attr_accessor :head, :tail, :length
    def initialize
        @head = nil
        @tail = nil
        @length = 0
    end

    def addHead(data)
        node = Node.new(data)
        if (length == 0) 
            @tail = node 
            @head = node
        else
            node.next = @head
            @head = node
        end
        @length += 1
    end

    def addTail(data)
        node = Node.new(data)
        if (length == 0)
            @head = node 
            @tail = node 
        else
            @tail.next = node 
            @tail = node 
        end
        @length += 1
    end

    def insert(index, data)
        puts "Hello 1"
        if (index < 0 or index > @length)
            return
        elsif (index == 0) 
            addHead(data)
        elsif (index == @length)
            addTail(data)
        else
            puts "Hello"
            a = @head
            for i in 0...index
                a = a.next 
            end
            node = Node.new(data)
            node.next = a.next
            a.next = node
            puts "#{a.data} #{a.next.data} Hello"
            @length += 1
        end
    end

    # Dequeue
    def deleteHead()
        value = @head.data
        @head = @head.next 
        @length -= 1
        return value
    end

    # Pop
    def deleteTail()
        a = @head 
        for i in 0...(@length-1)
            a = a.next 
        end
        value = @tail.data
        @tail = a
        @length -= 1
        return value
    end

    def searchData(data)
        a = @head
        for i in 0...@length
            if (a.data == data)
                return i 
            end 
            a = a.next 
        end
        return -1
    end

    def delete(data)
        index = searchData(data)
        if (index == -1)
            puts "Don't have in List"
        else
            if (index == 0)
                deleteHead()
            elsif (index == @length - 1)
                deleteTail()
            else
                p = @head 
                for i in 0...(index-1)
                    p = p.next
                end
                p.next = p.next.next
                @length -= 1
            end
        end
    end
   
    def reduceDuplicate()
        p1 = @head
        puts "1"
        while (p1 != nil and p1.next != nil)
            puts "#{p1.data}"
            p2 = p1.next 
            while (p2 != nil)
                if (p1.data == p2.data)
                    p1.next = p1.next.next
                    p2 = p1.next
                    @length -= 1
                else
                    break
                end
            end
            p1 = p1.next
        end
    end

    def display_details()
        a = @head 
        for i in 0...(@length)
            puts "#{a.data}"
            a = a.next 
        end
    end
end

a = SingleLinkedList.new

a.addTail(1)
a.addTail(2)
a.addTail(2)
a.addTail(2)
a.addTail(3)
a.addTail(4)
a.addTail(4)
a.addTail(5)
a.addTail(5)
a.display_details()
a.reduceDuplicate()
puts "----------------"
a.display_details()