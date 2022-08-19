# Find pair in array with sum equal to given value(Approach 1)
def check_pair(arr,x)
    len=arr.length
    arr.sort!           # You can choose your own sorting algorithm
    left=0
    right=len-1
    while left<right
        if (arr[left]+arr[right]==x)
            puts "#{arr[left]} #{arr[right]}"
            return "Array has two elements with sum:#{x}"
        elsif (arr[left]+arr[right]>x)
            right-=1
        else
            left+=1
        end
    end
    return "Array doesn't have two elements with sum:#{x}"
end

a = check_pair([5,4,6,-2,3,2,3,-1,9],9)
puts "#{a}"