class Node 
    attr_accessor :data, :left, :right
    def initialize(data = 0, left = nil, right = nil)
        @data = data
        @left = left
        @right = right
    end
end

class BST
    def initialize
        @root = nil
        @length = 0
    end

    def insertRe(node, check, data)
        return node if check == true
        if (node == nil or node.data == 0)
            node = Node.new(data)
            # puts "#{node.data}"
            check = true
            @length += 1
            return node
        end
        if (node.data < data) 
            node.right = insertRe(node.right, check, data)
        else
            node.left = insertRe(node.left, check, data)
        end
        return node
    end

    def insert(data) 
        check = false
        @root = insertRe(@root, check, data)
    end

    def findMin(node)
        current = node
        while (node.left != nil) 
            current = current.left
        end
        return current
    end

    def removeRe(node, data)
        return node if (node == nil)
        if (node.data < data) 
            node.right = removeRe(node.right, check, data)
        elsif (node.data > data)
            node.left = removeRe(node.left, check, data)
        else
            if (node.left == nil and node.right == nil) 
                return nil
            elsif (node.left == nil)
                return node.right
            elsif (node.right == nil)
                return node.left
            else
                current = findMin(node.right)
                node.data = current.data
                @length -= 1
                node.right = removeRe(node.right, current.data)
            end
        end 
        return node
    end

    def remove(data)
        @root = removeRe(@root, data)
    end

    def inOrderRe(node)
        # puts "Hello1"
        return node if (node == nil)
        # puts "Hello2"
        node.left = inOrderRe(node.left)
        puts "#{node.data}"
        # puts "Hello2"
        node.right = inOrderRe(node.right)
    end

    def inOrder()
        inOrderRe(@root)
        puts "#{@length}"
    end
end

root = BST.new
root.insert(2)
root.insert(3)
root.insert(1)
root.remove(2)
root.inOrder()