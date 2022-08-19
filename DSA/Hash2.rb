def sort_by_frequency(a)
    freq = Hash.new()
    for i in 0...(a.length)
        unless freq[a[i]]
            freq[a[i]] = {}
            freq[a[i]][:count] = 1
            freq[a[i]][:index] = i
        else
            freq[a[i]][:count] += 1
        end
    end
    freq = freq.sort_by{|k, v| [-v[:count], v[:index]]}
    
    j = 0
    freq.each do |k, v|
        for i in 0...v[:count]
            a[j] = k
            j += 1
        end
    end
    return a
end

a = sort_by_frequency([1,3,3,3,4,4,4,2,2,2,5]) # => [3, 3, 3, 4, 4, 4, 2, 2, 2, 1, 5]
puts "#{a}"