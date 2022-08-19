# Jump search
def jump_search(arr, lamda, element)
    lo = 0
    hi = lamda - 1
    while lo < arr.length
        if (arr[hi] <  element)
            lo += lamda
            hi += lamda
            if (hi > arr.length)
                hi = arr.length - 1
                break
            end
        elsif (arr[hi] == element)
            return hi
        else
            for i in lo..hi 
                if (arr[i] == element)
                    return i 
                end
            end
        end
    end
    return -1
end

arr = [0, 1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, 144, 233, 377, 610]
puts "#{jump_search(arr, 4, 55)}"